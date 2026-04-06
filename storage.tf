resource "google_storage_bucket" "private_bucket" {
  name          = var.bucket_name
  location      = var.region
  force_destroy = true

  #jednolity model uprawnień dla całego bucketa
  uniform_bucket_level_access = true

  #blokada przed publicznym dostępem 
  public_access_prevention = "enforced"
}
