variable "project_name" {
  default = "roboshop"
}

variable "env" {
  default = "dev"
}

variable "common_tags" {
  default = {
    Project = "roboshop"
    Component = "Catalogue"
    Environment = "DEV"
    Terraform = "true"
  }
}

variable "app_version" {
  
}