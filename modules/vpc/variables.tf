variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}
variable "instance_tenancy" {
  description = "Tenancy of the VPC"
  type        = string
  default     = "default"
}
variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

