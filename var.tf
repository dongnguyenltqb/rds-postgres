variable "region" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "rds_subnets" {
  type = list(string)
}

variable "rds_availability_zones" {
  type = list(string)
}

variable "rds_subnet_group_name" {
  type = string
}

variable "pg1_password" {
  type = string
}

variable "pg2_db_name" {
  type = string
}

variable "pg2_password" {
  type = string
}
