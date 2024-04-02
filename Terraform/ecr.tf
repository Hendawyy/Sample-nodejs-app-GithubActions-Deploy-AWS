resource "aws_ecr_repository" "my_repository" {
  name = "my-ecr-repo"
}

output "ecr_repository_url" {
  value = aws_ecr_repository.my_repository.repository_url
}
