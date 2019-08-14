resource "random_id" "server" {
  byte_length = 8
}

output "hash" {
  value = "${random_id.server.hex}"
}
