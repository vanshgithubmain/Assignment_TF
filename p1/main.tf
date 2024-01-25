resource "local_file" "foo" {
  # content  = "Hey Vansh"
  content = local.content
  #content = local.database     # then file1.bar m tfvars ka oracle aayga
  filename = "${path.module}/file1.bar"
}

resource "random_bytes" "jwt_secret" {
  length = 64
}

resource "random_id" "server" {
  keepers = {
    # Generate a new id each time we switch to a new AMI id
    new_id=var.new_id
      }

  byte_length = 8
}


resource "random_integer" "priority" {
  min = 1
  max = 50000
  keepers = {
    # Generate a new integer each time we switch to a new listener ARN
    # listener_arn = var.listener_arn
    # out1=var.out1
  }
}

resource "random_string" "random" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

locals {
  content = var.content
  database = var.database
  city = "Ambala"
}