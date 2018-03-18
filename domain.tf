module "domain" {
  source = "./modules/domain"

  region = "${var.region}"
  platform_name = "${var.platform_name}"
  platform_vpc_id = "${var.platform_vpc_id}"

  bastion_ip = "${data.aws_instance.bastion.public_ip}"

  route53_zone_public_id = "${var.route53_zone_public_id}"
  platform_default_subdomain = "${var.platform_default_subdomain}"
  platform_public_lb_arn = "${module.infrastructure.platform_public_lb_arn}"

  master_public_dns_name = "master.${var.platform_default_subdomain}"
  master_public_lb_arn = "${module.infrastructure.master_public_lb_arn}"
}
