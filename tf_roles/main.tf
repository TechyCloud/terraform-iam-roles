#This Module Will Creating the IAM readonly policy

module "module-iam-roles" {
source = "../modules/module-iam-roles/"

role-name = "Lambda-Role"
service-name = "lambda.amazonaws.com"
policy-arn = "arn:aws:iam::aws:policy/AWSLambdaFullAccess"
}
