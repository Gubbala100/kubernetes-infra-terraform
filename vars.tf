variable "instancetype" {
  type    = string
  default = "t2.small"
}

variable "instance_count" {
  type    = number
  default = "3"
}

variable "Aws_Region" {
  type    = string
  default = "eu-west-2"
}

variable "Aws_Profile" {
  type    = string
  default = "training"
}

variable "environment" {
  type    = string
  default = "QA"
}

variable "servername" {
  description = "Names Of the EC2 Instances"
  type        = list(string)
  default     = ["master", "worker1", "worker2"]
}

variable "security_groupid" {
  description = "Names Of the Security Group"
  type        = list(string)
  default     = ["symfonyapp_SG_Inboundrules"]
}