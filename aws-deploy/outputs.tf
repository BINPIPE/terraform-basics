output "url" {
  value = "http://${aws_instance.web1.public_ip}"
}
