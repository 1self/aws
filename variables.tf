variable "public_key_path" {
  description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.
Example: ~/.ssh/terraform.pub
DESCRIPTION
}

variable "key_name" {
  description = "Desired name of AWS key pair"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "eu-west-1"
}

variable "certificate" {
  desription  = "ssl cert for the elb"
  default          = "arn:aws:acm:eu-west-1:796735346424:certificate/9a61f2df-9711-44c0-a099-8f4af3d41322"
}

# Ubuntu Precise 12.04 LTS (x64)
# ami-70b59203 is the official ubuntu hvm ami
variable "aws_amis" {
  default = {
    #eu-west-1 = "ami-b1cf19c6"
    eu-west-1 = "ami-70b59203"
    us-east-1 = "ami-de7ab6b6"
    us-west-1 = "ami-3f75767a"
    us-west-2 = "ami-21f78e11"
  }
}

variable "deployment_id" {
  description = "the deployment id that will used to name infra artefacts"
}