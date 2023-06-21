variable "log_group_name" {
  type = string
}

variable "retention" {
  type = number
}

variable "log_bucket_name" {
  type = string
}

variable "lambda_runtime" {
  type = string
  default = "nodejs18.x"
}

variable "release_version" {
  type = string
}

variable "kms_key_arn" {
    type = string
    default = null
    description = "The KMS key to use for encrypting the Lambda function"
}

variable "vpc_config" {
  type = object({
    subnet_ids = list(string)
    security_group_ids = list(string) 
  })
  default = null
}