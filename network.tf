module "network" {
  source = "./modules/network"
  region = "${var.region}"
  platform_name = "${var.platform_name}"
  platform_vpc_id = "${var.platform_vpc_id}"
  platform_cidr = "${var.platform_cidr}"
  public_cidrs = ["${var.public_cidrs}"]
  private_cidrs = ["${var.private_cidrs}"]

  operator_cidrs = ["${var.operator_cidrs}"]
  public_access_cidrs = ["${var.public_access_cidrs}"]
}
