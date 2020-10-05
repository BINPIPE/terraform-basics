output "url" {
  value = aws_instance.web.*.public_ip
}
