env = "dev"

vpc = {
  vpc1 = {
    cidr_block = "10.0.0.0/16"
    additional_cidr_block = []
    private_subnets = {
      frontend = {
        cidr_block = ["10.0.0.0/24", "10.0.1.0/24"]
        name       = "frontend"
        attach_to  = "ngw"
      }
      database = {
        cidr_block = ["10.0.2.0/24", "10.0.3.0/24"]
        name       = "database"
        attach_to  = "ngw"
      }
      app = {
        cidr_block = ["10.0.4.0/24", "10.0.5.0/24"]
        name       = "app"
        attach_to  = "ngw"
      }
    }
    public_subnets  = {
      public = {
        cidr_block = ["10.0.255.0/24", "10.0.254.0/24"]
        name       = "public"
        attach_to  = "igw"
      }
    }

    subnet_availability_zones = ["us-east-1a", "us-east-1b"]
  }
}

management_vpc = {
  vpc_id       = "vpc-0aa9e93d9aea8a408"
  route_table  = "rtb-02f3f9a8e79a6c925"
  vpc_cidr     = "172.31.0.0/16"
}

docdb = {
  db1 = {
    engine  = "docdb"

  }
}

rds = {
  db1 = {
    allocated_storage    = 10
    engine               = "aurora-mysql"
    engine_version       = "5.7.mysql_aurora.2.10.2"
    instance_class       = "db.t3.micro"
    skip_final_snapshot  = true
  }
}
