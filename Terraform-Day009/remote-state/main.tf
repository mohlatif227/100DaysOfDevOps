resource "local_file" "state" {
  filename = "/tmp/${var.remote-state}"
  content = "This configuration uses ${var.remote-state} state"
}
