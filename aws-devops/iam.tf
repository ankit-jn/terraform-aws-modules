# DevOps Roles for CodeBuild and CodePipeline
module "iam_devops" {
    source = "../aws-iam"
    
    count = local.create_devops_roles ? 1 : 0 
    
    policies = var.policies
    service_linked_roles = local.devops_roles_def
}