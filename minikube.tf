module "minikube" {
  source = "github.com/scholzj/terraform-aws-minikube"

  aws_region    = "us-east-1"
  cluster_name  = "roboshop"
  aws_instance_type = "t3.medium"
  ssh_public_key = "~/.ssh/id_rsa.pub"
  aws_subnet_id = "subnet-05d8429e96841af42"
  hosted_zone = "sowjanyaaws.online"
  hosted_zone_private = false

  tags = {
    Application = "Minikube"
  }
}