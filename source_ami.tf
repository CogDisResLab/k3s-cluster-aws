data "aws_ami" "amazon_linux2" {
  owners      = ["amazon"]
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-arm64*"]
  }
}
