resource "aws_security_group" "allow_strict" {
  vpc_id      = module.k3s_vpc.vpc_id
  name        = "k3s-cluster-allow-strict-sg"
  description = "security group that allows ssh and all egress traffic"

  tags = {
  "Name" = "k3s-cluster-allow-strict-sg" }
}

resource "aws_security_group_rule" "ingress_self" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  self              = true
  security_group_id = aws_security_group.allow_strict.id
  description       = "allow all ingress traffic from self"
}

resource "aws_security_group_rule" "ingress_kubeapi" {
  type              = "ingress"
  from_port         = 6443
  to_port           = 6443
  protocol          = "tcp"
  cidr_blocks       = local.vpc_cidr_blocks
  security_group_id = aws_security_group.allow_strict.id
  description       = "allow kubeapi ingress traffic from vpc"
}

resource "aws_security_group_rule" "ingress_ssh" {
  type      = "ingress"
  from_port = 22
  to_port   = 22
  protocol  = "tcp"
  #tfsec:ignore:aws-ec2-no-public-ingress-sgr
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.allow_strict.id
  description       = "allow ssh ingress traffic from anywhere"
}

resource "aws_security_group_rule" "egress_all" {
  type      = "egress"
  from_port = 0
  to_port   = 0
  protocol  = "-1"
  #tfsec:ignore:aws-ec2-no-public-egress-sgr
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.allow_strict.id
  description       = "allow all egress traffic to anywhere"
}
