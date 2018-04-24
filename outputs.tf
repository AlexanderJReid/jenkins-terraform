output "ip" {
  value = "${module.jenkins.ip}"
}

output "disk" {
  value = "${module.jenkins.disk}"
}

output "hourly_price" {
  value = "${module.jenkins.hourly_price}"
}

output "monthly_price" {
  value = "${module.jenkins.monthly_price}"
}