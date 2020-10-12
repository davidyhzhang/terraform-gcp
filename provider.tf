provider "google" {
  credentials = file("CRE.json")
  project = "esoteric-energy-292213"
  region = "us-east4"
  zone = "us-east4-d"
}
