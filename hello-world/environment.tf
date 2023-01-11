
resource "confluent_environment" "main" {
  count = var.env_id == null ? 1 : 0
  display_name = var.env_name

  lifecycle {
    // enable to prevent Terraform destroy such as accidental human error.
    prevent_destroy = false
  }
}