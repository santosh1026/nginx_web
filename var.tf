variable "key_name" {
  description = "Desired name of AWS key pair"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}

# Ubuntu Precise 16.04 LTS (x64)
variable "aws_amis" {
  default = {
    us-east-1 = "ami-f4cc1de2"
    us-east-2 = "ami-fcc19b99"
    us-west-1 = "ami-16efb076"
    us-west-2 = "ami-a58d0dc5"
  }
}
output "address" {
  value = "${aws_elb.web.dns_name}"
}