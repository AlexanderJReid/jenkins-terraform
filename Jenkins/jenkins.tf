variable ssh_id {}
variable ssh_key_path {}

resource "digitalocean_droplet" "jenkins_droplet" {
  image = "centos-7-x64"
  name   = "terraform-jenkins"
  region = "lon1"
  size   = "1GB"
  ssh_keys = ["${var.ssh_id}"]
  user_data = "${data.template_file.cloud_init.rendered}"
  
  provisioner "file" {
    source      = "Jenkins/Scripts/run-jenkins-init.sh"
    destination = "/root/run-jenkins-init.sh"
    
    connection {
      type     = "ssh"
      user     = "root"
      private_key = "${file(var.ssh_key_path)}"
    }
  }
}

data "template_file" "cloud_init" {
  template = "${file("${path.module}/Templates/cloudinit.tpl")}"
}