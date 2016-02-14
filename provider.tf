provider "aws" {
  region                   = "${var.region}"
  shared_credentials_file  = "${var.aws_creds_file}"
  profile                  = "${var.aws_profile_name}"
}
