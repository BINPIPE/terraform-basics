provider "local" {
  version = "~> 1.4"
}
resource "local_file" "hello" {
  content = "Hello World!"
  filename = "hello.txt"
}
