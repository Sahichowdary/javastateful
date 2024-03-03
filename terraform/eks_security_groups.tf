resource "aws_security_group" "eks_cluster_sg" {
    name = "EKS Cluster SG"
    vpc_id = aws_vpc.vpc_private.id
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
    type = "egress"
    from_port = 0
    to_port = 65536
    protocol = "all"
    security_group_id = aws_security_group.eks_cluster_sg.id
    cidr_ipv4         = "0.0.0.0/0"
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv6" {
  type = "egress"
    from_port = 0
    to_port = 65536
    protocol = "all"
    security_group_id = aws_security_group.eks_cluster_sg.id
    cidr_ipv4         = "::/0"
}