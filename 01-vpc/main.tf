module "roboshop" {
  source = "git::https://github.com/nandab1805/terraform-aws-vpc.git?ref=main"
  project_name = var.project_name
  environment = var.environment
  vpc_tags = var.vpc_tags 
  common_tags = var.common_tags

  #public subnet
  public_subnet_cidr = var.public_subnet_cidr

    #private subnet
  private_subnet_cidr = var.private_subnet_cidr  

    #database subnet    
  database_subnet_cidr = var.database_subnet_cidr

    #peering 
  is_peering_required = var.is_peering_required
}