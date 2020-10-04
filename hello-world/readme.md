
A simple terraform script that creates a file and writes "Hello World!" within it. This is a good way to understand the terraform commands and lifecycle.

The main.tf file contains two blocks: a provider declaration and a resource definition. The provider declaration states that we'll use the local provider at version 1.4 or a compatible one.
Next, we have a resource definition named hello of type local_file. This resource type, as the name implies, is just a file on the local file system with the given content.


```provider "local" {
  version = "~> 1.4"
}
resource "local_file" "hello" {
  content = "Hello, Terraform"
  filename = "hello.txt"
}
