variable "credentials" {
  description = "credentials"
  default     = "./keys/river-autumn-414819-277db6b86847.json"
}

variable "region" {
  description = "region"
  default     = "us-central1"
}

variable "project" {
  description = "Project"
  default     = "river-autumn-414819"
}

variable "location" {
  description = "Project location"
  default     = "US"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "demo_dataset"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "river-autumn-414819-terra-bucket"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"

}
