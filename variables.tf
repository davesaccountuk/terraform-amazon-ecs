variable "aws_profile_name" {
	description = "The awscli profile name to use for creds"
	default = "personal"
}

variable "aws_creds_file" {
	description = "The awscli credentials file location on disk, typically this is ~/.aws/credentials"
}

variable "region" {
	description = "The AWS region to create resources in."
	default = "eu-west-1"
}

variable "availability_zones" {
	description = "The availability zones"
	default = "eu-west-1a,eu-west-1b,eu-west-1c"
}

variable "ecs_cluster_name" {
	description = "The name of the Amazon ECS cluster."
	default = "default"
}

/* ECS optimized AMIs per region */
variable "amis" {
	default = {
		ap-northeast-1 = "ami-aa2d13c4"
		ap-southeast-2 = "ami-908faaf3"
		eu-west-1      = "ami-af0a6dd8"
		us-east-1      = "ami-9886a0f2"
		us-west-1      = "ami-caf581aa"
		us-west-2      = "ami-1ead497e"
	}
}

variable "instance_type" {
	default = "t2.micro"
}

variable "key_name" {
	description = "The aws ssh key name."
}

variable "public_key" {
	description = "The ssh public key for using with the cloud provider."
}

variable "dockerhub_auth" {
	description = "Use the hashed pw value from ~/.docker/config.json"
	default = ""
}

variable "dockerhub_email" {
	description = "Use the e-mail value from ~/.docker/config.json"
	default = ""
}
