
resource "confluent_kafka_cluster" "main" {
  display_name = var.cluster_name
  availability = "SINGLE_ZONE"
  cloud        = "AWS"
  region       = var.cluster_region
  basic {}

  environment {
    id = var.env_id != null ? var.env_id : confluent_environment.main[0].id
  }

  lifecycle {
    // enable to prevent Terraform destroy such as accidental human error.
    prevent_destroy = false
  }
}