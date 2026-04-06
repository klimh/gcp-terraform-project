variable "project_id" {
  description = "Identyfikator projektu w Google Cloud Platform"
  type        = string
}

variable "region" {
  description = "Domyślny region do wdrażania zasobów (domyślnie Warszawa)"
  type        = string
  default     = "europe-central2"
}
