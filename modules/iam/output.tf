output "iam_role_name" {
  description = "Name of the IAM role"
  value       = aws_iam_role.ec2_role.name
}

output "iam_instance_profile" {
  description = "IAM instance profile name for EC2"
  value       = aws_iam_instance_profile.ec2_profile.name
}