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
# Providing SSH keys
resource "google_compute_project_metadata" "my_ssh_key" {
  depends_on = [null_resource.ssh-generator]
  metadata = {
    ssh-keys = "${var.gcp_instance_username}:${data.local_file.ssh-key-public.content}"
  }
}

data "template_file" "apache2" {
  template = file("./template/install_apache2.tpl")
}
