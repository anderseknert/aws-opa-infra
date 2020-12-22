# aws-opa-infra

Terraform code for setting up an AWS lab environment for working OPA, bundle servers, etc.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.14 |
| aws | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 3.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ami | The AMI to use for the EC2 instance | `string` | `"ami-0a3a4169ad7cb0d77"` | no |
| bucket\_name | Bucket name | `string` | `"opa-lab-bucket"` | no |
| instance\_type | Instance type | `string` | `"t3.micro"` | no |
| public\_key\_path | Path to public key to use for SSH access | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| opa\_bucket\_domain\_name | Bucket domain name |
| opa\_lab\_public\_ip | External IP |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
