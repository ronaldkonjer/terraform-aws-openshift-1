output "platform_vpc_id" {
  value = "${var.platform_vpc_id}"
}

output "public_subnet_ids" {
  value = ["${aws_subnet.public.*.id}"]
}

output "private_subnet_ids" {
  value = ["${aws_subnet.private.*.id}"]
}
