locals {
  data_lake_bucket = "project_road_safety"
}

variable "project" {
  description = "GCP Project ID"
  default = "red-height-339014"
  type = string
}
variable "region" {
  description = "Region for GCP resources. Choose as per your location: https://cloud.google.com/about/locations"
  default = "US"
  type = string
}

variable "storage_class" {
  description = "Storage class type for your bucket. Check official docs for more info."
  default = "STANDARD"
}

variable "BQ_DATASET" {
  description = "BigQuery Dataset that raw data (from GCS) will be written to"
  type = string
  default = "project_road_safety_data_all"
}