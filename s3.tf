resource "aws_s3_bucket" "tf_state_bucket" {
    bucket = "tfstatebucket"
    acl = "private"
		versioning {
			enabled = true
    }
    tags {
			Name = "Terraform State Bucket"
    }
}
