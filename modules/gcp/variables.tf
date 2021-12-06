variable "project_id" {
  description = "Google Cloud Platform (GCP) Project ID."
  type        = string
  default     = "devops-autumn-school"
}

variable "region" {
  description = "GCP region name."
  type        = string
  default     = "europe-west1"
}

variable "zone" {
  description = "GCP zone name."
  type        = string
  default     = "europe-west1-b"
}

variable "name" {
  description = "Web server name."
  type        = string
  default     = "tf-host"
}

variable "machine_type" {
  description = "GCP VM instance machine type."
  type        = string
  default     = "e2-micro"
}

variable "ssh_path" {
  description = "Path for ssh keys for instance"
  type        = string
  default     = "/home/mitok/.ssh/GCP/gcp_terra"
}

variable "gcp_instance_username" {
  description = "Path for ssh keys for instance"
  type        = string
  default     = "mitok_alexander"
}

variable "credentials_path" {
  description = "Path for GCP credentials.json"
  type        = string
  default     = "/home/mitok/TerraPractice/Credentials/gcp.json"

}