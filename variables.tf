variable "project_id" {
  description = "Identyfikator projektu w Google Cloud Platform"
  type        = string
  default     = "cloudterraform-492511"
}

variable "region" {
  description = "region Warszawa"
  type        = string
  default     = "europe-central2"
}

variable "bucket_name" {
  description = "Nazwa prywatnego bucketa"
  type        = string
  default     = "cloudterraformklimsw"
}
