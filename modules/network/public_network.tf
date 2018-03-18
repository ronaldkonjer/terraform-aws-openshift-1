# Public subnet: for router LB

resource "aws_subnet" "public" {
  count = "${length(var.public_cidrs)}"
  availability_zone = "${element(data.aws_availability_zones.available.names, count.index)}"
  vpc_id = "${var.platform_vpc_id}"
  cidr_block = "${element(var.public_cidrs, count.index)}"

  tags = "${map(
    "kubernetes.io/cluster/${var.platform_name}", "owned",
    "Name", "${var.platform_name}-public-${count.index}"
  )}"
}

# Public access to the router
# resource "aws_internet_gateway" "public_gw" {
#   vpc_id = "${var.platform_vpc_id}"
#   tags = "${map(
#     "kubernetes.io/cluster/${var.platform_name}", "owned",
#     "Name", "${var.platform_name}-public-gw"
#   )}"
# }

# Public route table: attach Internet gw for internet access.

resource "aws_route_table" "public" {
  vpc_id = "${var.platform_vpc_id}"
  tags = "${map(
    "kubernetes.io/cluster/${var.platform_name}", "owned",
    "Name", "${var.platform_name}-public-rt"
  )}"
}

resource "aws_route" "public_internet" {
  route_table_id = "${aws_route_table.public.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = "igw-f0e2ad95"
  depends_on = ["aws_route_table.public"]
}

resource "aws_route_table_association" "public" {
  count = "${length(var.public_cidrs)}"
  subnet_id = "${element(aws_subnet.public.*.id, count.index)}"
  route_table_id = "${aws_route_table.public.id}"
}
