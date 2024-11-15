variable "project_name" {
  description = "The name of the GCP project"
  type        = string
  default     = "python-test-441805"
}

variable "region" {
  description = "The region for the VPC"
  type        = string
  default     = "asia-south1"
}

variable "subnets" {
  description = "A list of subnets to create"
  type = map(object({
    name          = string
    region        = string
    ip_cidr_range = string
    pods_ip_range = string
    services_ip_range = string
  }))
  default = {
    "subnet_p100" = {
      name          = "subnet-p100"
      region        = "asia-south1"
      ip_cidr_range = "10.100.0.0/24"
      pods_ip_range   = "10.100.1.0/24"  # Pods range
      services_ip_range = "10.100.2.0/24"  # Services range
    },
    "subnet_p200" = {
      name          = "subnet-p200"
      region        = "asia-south1"
      ip_cidr_range = "10.110.0.0/24"
      pods_ip_range  = "10.110.1.0/24"  # Pods range
      services_ip_range = "10.110.2.0/24"  # Services range
    }
  }
}
variable "zone" {
  description = "The zone where the GKE cluster control plane will be created"
  type        = string
  default     = "asia-south1-a"
}

variable "node_zones" {
  description = "List of zones for the GKE node pool"
  type        = list(string)
  default     = ["asia-south1-a", "asia-south1-b", "asia-south1-c"]
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
  type        = string
  default     = "private-gke-cluster-2"
}
