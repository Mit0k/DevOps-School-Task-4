
# Creates a GCP VM Instance.
resource "google_compute_instance" "vm" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone
  tags         = ["http-server","https-server"]


  boot_disk {
    initialize_params {
      image = "ubuntu-2004-focal-v20210927"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
  metadata_startup_script = data.template_file.apache2.rendered
}



data "template_file" "apache2" {
  template = file("./template/install_apache2.tpl")
}