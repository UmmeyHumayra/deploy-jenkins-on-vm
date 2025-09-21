variable "project_id" {
  description = "The ID of the project in which to provision resources."
  type        = string
}

// Marketplace requires this variable name to be declared
variable "goog_cm_deployment_name" {
  description = "The name of the deployment and VM instance."
  type        = string
}

variable "source_image" {
  description = "The image name for the disk for the VM instance."
  type        = string
  default     = "projects/mpi-bitnami-launchpad/global/images/jenkins-2-516-3-r0-debian-12-amd64"
}

variable "zone" {
  description = "The zone for the solution to be deployed."
  type        = string
}

variable "machine_type" {
  description = "The machine type to create, e.g. e2-small"
  type        = string
  default     = "g1-small"
}

variable "boot_disk_type" {
  description = "The boot disk type for the VM instance."
  type        = string
  default     = "pd-standard"
}

variable "boot_disk_size" {
  description = "The boot disk size for the VM instance in GBs"
  type        = number
  default     = 10
}

variable "networks" {
  description = "The network name to attach the VM instance."
  type        = list(string)
  default     = ["default"]
}

variable "sub_networks" {
  description = "The sub network name to attach the VM instance."
  type        = list(string)
  default     = []
}

variable "external_ips" {
  description = "The external IPs assigned to the VM for public access."
  type        = list(string)
  default     = ["EPHEMERAL"]
}

variable "enable_tcp_80" {
  description = "Allow HTTP traffic from the Internet"
  type        = bool
  default     = true
}

variable "tcp_80_source_ranges" {
  description = "Source IP ranges for HTTP traffic"
  type        = string
  default     = ""
}

variable "enable_tcp_443" {
  description = "Allow HTTPS traffic from the Internet"
  type        = bool
  default     = true
}

variable "tcp_443_source_ranges" {
  description = "Source IP ranges for HTTPS traffic"
  type        = string
  default     = ""
}