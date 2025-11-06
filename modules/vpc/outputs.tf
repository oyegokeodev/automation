output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "vpc_cidr_block" {
  description = "CIDR block of the VPC"
  value       = aws_vpc.main.cidr_block
}

output "public_subnets" {
  description = "Details of public subnets"
  value = {
    for idx, subnet in aws_subnet.public : var.availability_zones[idx] => {
      id               = subnet.id
      cidr_block       = subnet.cidr_block
      availability_zone = subnet.availability_zone
    }
  }
}

output "private_subnets" {
  description = "Details of private subnets"
  value = {
    for idx, subnet in aws_subnet.private : var.availability_zones[idx] => {
      id               = subnet.id
      cidr_block       = subnet.cidr_block
      availability_zone = subnet.availability_zone
    }
  }
}

output "public_subnet_ids" {
  description = "IDs of public subnets"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "IDs of private subnets"
  value       = aws_subnet.private[*].id
}

output "availability_zones" {
  description = "List of availability zones used"
  value       = var.availability_zones
}

output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = aws_internet_gateway.main.id
}

output "nat_gateway_id" {
  description = "ID of the NAT Gateway"
  value       = aws_nat_gateway.main.id
}

output "nat_gateway_public_ip" {
  description = "Public IP address of the NAT Gateway"
  value       = aws_eip.nat.public_ip
}