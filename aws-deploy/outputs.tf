output "url" {
  value = "http://${aws_instance.web[count.index].public_ip}"
}
