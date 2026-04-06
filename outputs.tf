output "bucket_name" {
  description = "Faktyczna nazwa utworzonego bucketa w Cloud Storage"
  value       = google_storage_bucket.private_bucket.name
}

output "bigquery_dataset_id" {
  description = "ID utworzonego datasetu w BigQuery"
  value       = google_bigquery_dataset.dataset.dataset_id
}

output "bigquery_table_id" {
  description = "ID utworzonej tabeli w BigQuery"
  value       = google_bigquery_table.table.table_id
}
