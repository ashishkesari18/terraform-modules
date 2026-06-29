variable "sg_name" {
  description = "Name of the security group"
  type        = string
  default     = "allow_tls"
}

variable "sg_description" {
  description = "Description of the security group"
  type        = string
  default     = "Allow TLS inbound traffic and all outbound traffic"
}

variable "vpc_id" {
  description = "VPC ID where security group will be created"
  type        = string
}

variable "ingress_port" {
  description = "Port to allow inbound traffic"
  type        = number
  default     = 443
}

variable "cidr_ipv4" {
  description = "IPv4 CIDR block for ingress"
  type        = string
}

variable "cidr_ipv6" {
  description = "IPv6 CIDR block for ingress"
  type        = string
  default     = "::/0"
}