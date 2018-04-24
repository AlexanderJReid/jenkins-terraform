module "jenkins" {
  source  = "./Jenkins"
  
  ssh_id = "${var.ssh_id}"
  ssh_key_path = "${var.ssh_key_path}"
}