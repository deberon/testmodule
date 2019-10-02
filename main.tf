resource "random_id" "hash" {
  byte_length = "${var.byte_length}"
}

output "hash" {
  value       = "${random_id.hash.hex}"
  description = "hash hash"
}

variable "byte_length" {
  description = "How long to make the generated hash"
  default     = 8
}

output "workspace" {
  value = terraform.workspace
}
