resource "local_file" "foo" {
  content  = var.map1["city"]
  filename = "${path.module}/file3.bar"
}