## Prerequisites

AWS cli

terraform

aws-iam-authenticator 

kubectl

##
## Important: in backend.tf, make sure you change S3 bucket name to a name that exists in your account!
##

## Create an EKS cluster:

% cd tf-eks-with-rds

% terraform init

% terraform plan -var-file="dev.tfvars"

% terraform apply -var-file="dev.tfvars"



## Fetch kubeconfig from a cluster

%aws eks --region us-east-2 update-kubeconfig --name $CLUSTER_NAME


