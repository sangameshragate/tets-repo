output "vpc_id"{
    description="this will be the vpcid"
    value= aws_vpc.vpc1.id
}

output "subnet_id"{
    description="this is the subnet id"
    value=aws_subnet.subnet1.id
}
