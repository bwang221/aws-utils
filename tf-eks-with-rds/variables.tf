variable "region" {
  default = "us-west-2"
}


variable "environment" {
  default = "dev"
}


variable "vpc_name"{
  default = "eks-dev-vpc"
}
#############
# EKS vars
#############
variable "cluster_name"{
  default = "eks-dev"
}

variable "cluster_node_type"{
  default = "t2.large"
}

variable "worker_group_vol_size"{
  default = 10
}

#############
# Redis vars
#############
variable "redis_name"{
  default = "eks-dev-redis"
}
variable "redis_clusters"{
  default = "1"
}

variable "redis_failover"{
  default = "false"
}

variable "redis_instance_type"{
  default = "db.t2.micro"
}


variable "redis_engine_version"{
  default = "6.2"
}





###########
# RDS
###########

variable "db_name" {
  description = "Default db to created"
  sensitive   = true
  default = "appdb"
}


variable "db_username" {
  description = "RDS root user name"
  sensitive   = true
  default = "dbuser"
}

variable "db_password" {
  description = "RDS root user password"
  sensitive   = true
  default = "b4ucme_password!"
}
variable "db_instance_class" {
  description = "RDS instance class"
  default = "db.r5.large"
}


