variable "region" {
  description = "The region to deploy the cluster in, e.g: eu-west-2."
  default = "eu-west-2"
}

variable "platform_name" {
  default="Openshift"
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
  default = 1
}

variable "master_count" {
  default = 1
}

variable "route53_zone_public_id" {
  default = "Z2CP8DRLO76FWF"
}

variable "platform_default_subdomain" {
  default = "cgcloud.eu"
}
