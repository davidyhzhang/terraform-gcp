resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
  auto_create_subnetworks = "true"
}

resource "google_compute_firewall" "default" {
 name    = "flask-app-firewall"
 network = google_compute_network.vpc_network.self_link

 allow {
   protocol = "tcp"
   ports    = ["5000", "22", "80", "443", "8080"]
 }
}
