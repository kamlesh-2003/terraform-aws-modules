output "vpc-id" {
  value = aws_vpc.my-vpc.id
}
output "vpc-name" {
  value = aws_vpc.my-vpc.tags
}
output "igw-name" {
  value = aws_internet_gateway.internete-gateway.tags
}