resource "local_file" "foo" {
  content  = var.list1[1]
  filename = "${path.module}/file2.bar"
}