resource "aws_vpc" "my-vpc" {
  cidr_block = var.cidr_range
  enable_dns_support = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  instance_tenancy = var.instance_tenancy

  tags = {
    Name = var.vpc-name
  }
}

/*Default tenancy → Instances run on shared hardware (most common, low cost)
Dedicated instance → Instances run on hardware isolated to your account
Dedicated host → You get a full physical server (used for licensing/compliance)*/
resource "aws_internet_gateway" "internete-gateway" {
  vpc_id = aws_vpc.my-vpc.id
  tags = {
    Name= var.internet_gateway_name
  }
}