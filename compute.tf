resource "aws_key_pair" "k3s" {
  key_name   = "k3s_ssh_key"
  public_key = var.public_key
}

module "k3s_control" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  count = var.control_count

  name = "k3s-control-${format("%02d", count.index + 1)}"

  ami                    = data.aws_ami.amazon_linux2.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.k3s.key_name
  monitoring             = true
  vpc_security_group_ids = [aws_security_group.allow_strict.id]

  subnet_id         = module.k3s_vpc.public_subnets[count.index]
  availability_zone = module.k3s_vpc.azs[count.index]

  enable_volume_tags = false

  root_block_device = [{
    encrypted   = true
    volume_type = "gp3"
    volume_size = 40
    tags = {
      Name = "k3s-control-${format("%02d", count.index + 1)}-root"
    }
  }]
}

module "k3s_worker" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  count = var.worker_count

  name = "k3s-worker-${format("%02d", count.index + 1)}"

  ami                    = data.aws_ami.amazon_linux2.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.k3s.key_name
  monitoring             = true
  vpc_security_group_ids = [aws_security_group.allow_strict.id]
  subnet_id              = module.k3s_vpc.public_subnets[count.index % 2]
  availability_zone      = module.k3s_vpc.azs[count.index % 2]

  enable_volume_tags = false

  root_block_device = [{
    encrypted   = true
    volume_type = "gp3"
    volume_size = 100
    tags = {
      Name = "k3s-worker-${format("%02d", count.index + 1)}-root"
    }
  }]
}
