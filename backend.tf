terraform {
  #the gcs below refers to google cloud storage, i.e. the backend config will live in a bucket as specified below
  backend "gcs" {
    bucket      = "terraform-test-cr-lab-dmolnar-0911225043"
    prefix      = "terraform1"
    credentials = "../terraform-key.json"
  }
}