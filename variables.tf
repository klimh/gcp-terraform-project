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

variable "bq_dataset_id" {
  description = "ID datasetu w BigQuery"
  type        = string
  default     = "moj_dataset"
}

variable "bq_table_id" {
  description = "ID tabeli w BigQuery"
  type        = string
  default     = "analiza_danych_tabela"
}
