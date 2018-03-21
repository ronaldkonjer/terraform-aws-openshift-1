variable "region" {
  description = "The region to deploy the cluster in, e.g: eu-west-2."
  default = "eu-west-1"
}

variable "platform_name" {
  default="openshift-ha"
}

variable "platform_vpc_id" {
  default = "vpc-4fac482b"
}

variable "key_pair_public_key_path" {
  default="~/.ssh/awscgkey.pub"
}

variable "key_pair_private_key_path" {
  default="~/.ssh/awscgkey"
}

variable "operator_cidrs" {
  type = "list"
  default = ["0.0.0.0/0"]
}

variable "public_access_cidrs" {
  type = "list"
  default = ["0.0.0.0/0"]
}

variable "infra_node_count" {
  default = 2
}

variable "master_count" {
  default = 2
}

variable "route53_zone_public_id" {
  default = "Z2CP8DRLO76FWF"
}


variable "master_spot_price" {
  default = ""
}

variable "platform_default_subdomain" {
  default = "cgcloud.eu"
}
