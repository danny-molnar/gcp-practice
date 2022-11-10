provider "google" {
  project = "cr-lab-dmolnar-0911225043"
  region  = "europe-west2"
  zone    = "europe-west2-a"
  credentials = file("../terraform-key.json")
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

terraform {
    #the gcs below refers to google cloud storage, i.e. the backend config will live in a bucket as specified below
    backend "gcs" {
        bucket = "terraform-test-cr-lab-dmolnar-0911225043"
        prefix = "terraform1"
        credentials = "../terraform-key.json"
    }
}