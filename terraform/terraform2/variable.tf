variable "region" {
    description = "used to specify the region"
    default = "us-west-2"
}

variable "availability_zone" {
    default = "us-west-2a"
}

variable "availability_zone2" {
    default = "us-west-2b"
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
