output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

output "vpc_cidr" {
  description = "CIDR block of the VPC"
  value       = aws_vpc.main.cidr_block
}
output "subnet_id" {
  description = "ID of the subnet"
  value       = aws_subnet.main.id
}