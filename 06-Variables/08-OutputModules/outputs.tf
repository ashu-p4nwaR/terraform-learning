output "initkloud_ec2_public_ip" {
  description = "EC2 Public IP:"
  value       = aws_instance.initkloud_ec2.public_ip
}

output "initkloud_app_url" {
  description = "Application URL for initkloud:"
  value       = join("", ["http://", aws_instance.initkloud_ec2.public_ip])
}
