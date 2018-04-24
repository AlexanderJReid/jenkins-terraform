output "ip" {
  value = "${digitalocean_droplet.jenkins_droplet.ipv4_address}"
}

output "disk" {
  value = "${digitalocean_droplet.jenkins_droplet.disk}"
}

output "hourly_price" {
  value = "${digitalocean_droplet.jenkins_droplet.price_hourly}"
}

output "monthly_price" {
  value = "${digitalocean_droplet.jenkins_droplet.price_monthly}"
}