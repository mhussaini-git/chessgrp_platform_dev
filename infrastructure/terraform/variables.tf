variable "aws_region" {
  description = "AWS region to deploy to"
  default     = "us-west-2"
}

variable "project_name" {
  description = "Name of the project"
  default     = "hello-world-api"
}

variable "environment" {
  description = "Deployment environment"
  default     = "production"
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]
}

variable "service_desired_count" {
  description = "Desired number of API containers"
  default     = 2
}

variable "ecr_repository_url" {
  description = "URL of the ECR repository"
} 