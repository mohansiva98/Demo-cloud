output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public_1.id
}

output "available_azs" {
  value = data.aws_availability_zones.available.names
}

