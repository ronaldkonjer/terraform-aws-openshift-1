module "openshift_platform" {
  source = "../.."

  upstream = true
  region = "${var.region}"
  platform_vpc_id = "${var.platform_vpc_id}"
  platform_name = "${var.platform_name}"
  key_pair_private_key_path = "${var.key_pair_private_key_path}"
  operator_cidrs = "${var.operator_cidrs}"
  public_access_cidrs = "${var.public_access_cidrs}"
  infra_node_count = "${var.infra_node_count}"
  master_count = "${var.master_count}"
  master_spot_price = "${var.master_spot_price}"
  platform_default_subdomain = "${var.platform_default_subdomain}"
  openshift_image_tag =  "v3.7.1"
  route53_zone_public_id = "${var.route53_zone_public_id}"
}
