provider "aws" {
  region = "eu-north-1"
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "Polishchuk-tf-instance-nano"

  instance_type          = "t3.nano"
  key_name               = "PolishchukKey"
  monitoring             = true
  vpc_security_group_ids = ["sg-0d4c31d951154bcf1"]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}