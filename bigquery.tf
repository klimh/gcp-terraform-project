resource "google_bigquery_dataset" "dataset" {
  dataset_id    = var.bq_dataset_id
  location      = var.region
  friendly_name = "TestDataset"
  description   = "Dataset testowy"

  #na potrzeby testu właczzam tą opcję
  delete_contents_on_destroy = true
}

resource "google_bigquery_table" "table" {
  # dynamiczne powiązanie, referujemy się do wyższego obiektu
  dataset_id = google_bigquery_dataset.dataset.dataset_id
  table_id   = var.bq_table_id

  # dla testu false
  deletion_protection = false

  schema = <<EOF
[
  {
    "name": "id",
    "type": "STRING",
    "mode": "REQUIRED",
    "description": "Przykladowe unikalne ID logu"
  },
  {
    "name": "timestamp",
    "type": "TIMESTAMP",
    "mode": "NULLABLE",
    "description": "Czas i data rekordu"
  },
  {
    "name": "user_action",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "Akcja podjęta przez użytkownika"
  }
]
EOF
}

