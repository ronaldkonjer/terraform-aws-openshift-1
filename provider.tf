//  Setup the core provider information.
provider "aws" {
  region  = "${var.region}"
  profile = "cg-iac"
}

provider "null" {
}
