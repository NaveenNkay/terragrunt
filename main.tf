resource "google_compute_address" "nat-address" {
  name         = "nat-address"
  address_type = "EXTERNAL"
  region  = asia-south1
  network_tier = "PREMIUM"
}
