
region = "us-west-2"

environment = "dev"

vpc_name = "dev-eks-vpc"


#############
# EKS vars
#############

cluster_name = "dev-eks"

cluster_node_type = "t2.medium"

worker_group_vol_size = 10


###########
# RDS (not used)
###########

db_name = "appdb"

db_username = "postgres"

db_password = "password!"

db_instance_class = "db.t4g.micro"


