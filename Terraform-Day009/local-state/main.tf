resource "local_file" "state" {
  filename = "/tmp/${var.local-state}"
  content = "This configuration uses ${var.local-state} state"
}
