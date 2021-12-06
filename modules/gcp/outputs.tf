output "webserver_ip" {
  value = google_compute_instance.vm.network_interface.0.access_config.0.nat_ip
}
output "ssh-connect" {
  value = "ssh -i ${data.local_file.ssh-key-private.filename} ${var.gcp_instance_username}@${google_compute_instance.vm.network_interface.0.access_config.0.nat_ip}"
}