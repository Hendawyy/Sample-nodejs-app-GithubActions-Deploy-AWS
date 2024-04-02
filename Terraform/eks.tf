resource "aws_eks_cluster" "nawy-eks-cluster" {
  name     = "nawy-eks-cluster"
  role_arn = aws_iam_role.master.arn

  vpc_config {
    subnet_ids = [aws_subnet.public_sub1.id, aws_subnet.public_sub2.id]
  }

}
