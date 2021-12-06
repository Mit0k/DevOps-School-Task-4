resource "null_resource" "ssh-generator" {
  triggers = { always_run =timestamp() }
  provisioner "local-exec" {
    #command = "ssh-keygen -t rsa -f ${var.ssh_path} -C ${var.gcp_instance_username} -N ''"
    command = "scripts/ssh-keygen.sh ${var.ssh_path} ${var.gcp_instance_username}"
  }
}

data "local_file" "ssh-key-public" {
  depends_on = [null_resource.ssh-generator]
  filename = "${var.ssh_path}.pub"
}
data "local_file" "ssh-key-private" {
  depends_on = [null_resource.ssh-generator]
  filename = var.ssh_path
}
