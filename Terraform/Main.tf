provider "google" {
  credentials = file("~/home/or/Desktop/gke-Key.json")
  project     = "gke-first-393008"
  region      = "us-central1" 
}

# Include the GKE cluster configurations from the separate files
module "eks_prod_cluster" {
  source = "./eks_prod_cluster.tf"
}

module "eks_test_cluster" {
  source = "./eks_test_cluster.tf"
}