output "subnet_names" {
  value = [for s in google_compute_subnetwork.subnets : s.ip_cidr_range]
}
output "jenkins_external_ip" {
  description = "The external IP address of the jenkins instance"
  value       = google_compute_instance.jenkins.network_interface[0].access_config[0].nat_ip
}
output "bastion_external_ip" {
  description = "The external IP address of the bastion instance"
  value       = google_compute_instance.jenkins.network_interface[0].access_config[0].nat_ip
}
output "nat-ip-address" {
  description = "The external IP address of the bastion instance"
  value       = google_compute_address.nat-address.address
}

