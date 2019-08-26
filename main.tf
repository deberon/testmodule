resource "random_id" "server" {
  byte_length = 8
}

output "hash" {
  value       = "${random_id.server.hex}"
  description = "Generated hash"
}

variable "byte_length" {
  description = "How long to make the generated hash"
  default     = 8
}
