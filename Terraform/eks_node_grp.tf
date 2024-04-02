resource "aws_eks_node_group" "nawy_node_group" {
  cluster_name    = aws_eks_cluster.nawy-eks-cluster.name
  node_group_name = "nawy-eks-node-group"
  node_role_arn   = aws_iam_role.worker.arn
  subnet_ids      = [aws_subnet.public_sub1.id, aws_subnet.public_sub2.id]
  capacity_type   = "ON_DEMAND"
  disk_size       = 20
  instance_types  = ["t2.small"]
  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }
  update_config {
    max_unavailable = 1
  }
  tags = {
    Name = "nawy-eks-instance${count.index + 1}"
  }
  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy,
  aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly, ]
}
