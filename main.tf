variable "name" {
  type    = string
  default = "bar"
}

resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "echo 'Hello ${var.name}'"
  }
}

