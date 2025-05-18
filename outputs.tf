output "lab8_instance_ip" {
  description = "Public IP of lab8-instance"
  value       = google_compute_instance.lab8_instance.network_interface[0].access_config[0].nat_ip
}
