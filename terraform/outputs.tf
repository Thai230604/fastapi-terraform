output "public_ip" {
  value = aws_instance.app.public_ip
}

output "ssh_command" {
  value = "ssh -i fastapi-key.pem ubuntu@${aws_instance.app.public_ip}"
}

output "private_key_path" {
  value = "${path.module}/fastapi-key.pem"
}

output "ecr_repository_url" {
  value = aws_ecr_repository.app.repository_url
}
