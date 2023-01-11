variable "env_name" {
  type = string
  default = null
}

variable "env_id" {
  type = string
  default = ""
}

variable "cluster_region" {
  type = string
  default = "ap-northeast-1"
}

variable "cluster_name" {
  type = string
  default = "my-cluster"
}

// not available yet: https://github.com/hashicorp/terraform/issues/30957
# variable "prevent_destroy" {
#   type = bool
#   default = false // set to true for staging/production
# }