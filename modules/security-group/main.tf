resource "aws_security_group" "allow_tls" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id

  tags = {
    Name = var.sg_name
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.cidr_ipv4
  from_port         = var.ingress_port
  ip_protocol       = "tcp"
  to_port           = var.ingress_port
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv6" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv6         = var.cidr_ipv6
  from_port         = var.ingress_port
  ip_protocol       = "tcp"
  to_port           = var.ingress_port
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv6" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv6         = "::/0"
  ip_protocol       = "-1"
}