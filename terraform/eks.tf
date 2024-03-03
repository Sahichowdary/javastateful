resource "aws_eks_cluster" "eks_main" {
  name     = "Demo POC"
  role_arn = var.eks_cluster_role

  vpc_config {
    endpoint_public_access = false
    endpoint_private_access = true
    subnet_ids = [aws_subnet.vpc_private_subnet_private_1.id, aws_subnet.vpc_private_subnet_private_2.id]
  }

  version = "1.29"

  encryption_config {
    resources = secrets
    provider {
        key_arn = var.eks_encryption_key
    }
  }

  security_group_ids = [aws_security_group.eks_cluster_sg.id]

}