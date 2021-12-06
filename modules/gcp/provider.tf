# Specify the GCP Provider
provider "google" {
  credentials = file("/home/mitok/TerraPractice/Credentials/gcp.json")
  project = var.project_id
  region  = var.region
}