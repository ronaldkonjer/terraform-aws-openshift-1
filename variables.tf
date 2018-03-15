variable "region" {
  description = "The region to deploy the cluster in, e.g: eu-west-2."
}

variable "platform_name" {
  description = "The name of the cluster that is used for tagging some resources"
}

variable "key_pair_public_key_path" {
  description = "AWS key pair that is used for instances of the cluster includes the bastion"
}

variable "key_pair_private_key_path" {
  description = "AWS key pair that is used for instances of the cluster includes the bastion"
}

variable "platform_cidr" {
  default = "172.24.0.0/16"
}

variable "private_cidrs" {
  type = "list"
  default = ["172.24.33.0/24", "172.24.34.0/24", "172.24.35.0/24"]
}

variable "public_cidrs" {
  type = "list"
  default = ["172.24.30.0/24", "172.24.31.0/24", "172.24.32.0/24"]
}

variable "operator_cidrs" {
  type = "list"
  default = ["0.0.0.0/0"]
  description = "CIDRS that is allowed from which master api can be accessed"
}

variable "public_access_cidrs" {
  type = "list"
  default = ["0.0.0.0/0"]
  description = "CIDRS that is allowed from which public users can access served services in the cluster"
}

variable "infra_node_count" {
  default = 2
}

variable "master_count" {
  default = 1
}

variable "upstream" {
  description = "Sets true if you want to install Origin."
  default = true
}

variable "rh_subscription_pool_id" {
  description = "Red Hat subscription pool id for OpenShift Container Platform"
  default = ""
}

variable "rhn_username" {
  description = "Red Hat Network login username for registration system of the OpenShift Container Platform cluster"
  default = ""
}

variable "rhn_password" {
  description = "Red Hat Network login password for registration system of the OpenShift Container Platform cluster"
  default = ""
}

variable "openshift_major_version" {
  default = "3.7"
}

variable "openshift_image_tag" {
  default = "v3.7"
}

# Domains

variable "route53_zone_public_id" {
  description = "Public Hosted Zone id to use as DNS"
}

variable "platform_default_subdomain" {
  description = "Public DNS subdomain for access to services served in the cluster"
}
