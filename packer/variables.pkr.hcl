variable "project_name" {
  description = "name of project"
  type        = string
}
variable "project_env" {
  description = "project_environment"
  type        = string
}
variable "ami_id" {
  description = "Instance AMI"
  type        = string
}
locals {
  image-timestamp = regex_replace(timestamp(), "[- TZ:]", "")
  image-name      = "${var.project_name}-${var.project_env}-${local.image-timestamp}"
}
