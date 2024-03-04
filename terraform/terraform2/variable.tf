variable "region" {
    description = "used to specify the region"
    default = "us-east-1"
}

variable "availability_zone" {
    default = "us-east-1a"
}

variable "eks_cluster_role" {
    default = "arn:aws:iam::036965198866:role/AmazonEKSClusterRole"
}

variable "eks_node_role" {
    default = "arn:aws:iam::036965198866:role/EKS-Node-Group-role"
}

variable "eks_encryption_key" {
    default = ""
}
