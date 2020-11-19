# terraform-iam-roles

The Terraform code will create the IAM roles to use the AWS services as per your request in variables. You can followup the below steps to create the same in your infra.

## Prerequisites
- Terraform v0.13.5
- AWS CLI
- IAM Access Key & Secret Key

## Usage

You can download terraform code [here](https://github.com/TechyCloud/terraform-iam-roles/archive/main.zip) to create the IAM role.

After downloading the code, you can update the below variables in **main.tf** file in **tf_roles** directory. In the variable part you must be update the Service Name & Policy ARN as per your requirement. For example, If you want to attache this role to EC2 instance you should to choose the service name as like below,

> service-name = "ec2.amazonaws.com"

And the policy also you must choose as per your requirement in the **policy-arn** variable.

```
role-name = "Lambda-Role"
service-name = "lambda.amazonaws.com"
policy-arn = "arn:aws:iam::aws:policy/AWSLambdaFullAccess"
```

Once updated the variables, The code is ready to create the IAM role with requested policy attached. Now, You can run the below command to initialize the configuration before going to apply the changes.

> terraform init

Once succeed the above command, You can run the below apply command to create the IAM role. In this step please keep it ready IAM user access and secret key to apply the changes.   

> terraform apply


**!! Once the command is succeed, You have successfully created the IAM Role with terraform !!**

###### Thanks for using this Block.
