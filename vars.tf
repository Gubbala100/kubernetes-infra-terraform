variable "masterinstancetype" {
  type    = string
  default = "t2.medium"
}

variable "workerinstancetype" {
  type    = string
  default = "t2.micro"
}

variable "masterinstance_count" {
  type    = number
  default = "1"
}

variable "workerinstance_count" {
  type    = number
  default = "0"
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

variable "keyname" {
  type    = string
  default = "k8s-key"
}

variable "publickey" {
  type    = string
  default = ""
}

variable "masterservername" {
  description = "Names Of the EC2 Instances"
  type        = list(string)
  default     = ["master1"]
}

variable "workerservername" {
  description = "Names Of the EC2 Instances"
  type        = list(string)
  default     = ["worker1", "worker2"]
}

variable "master_security_groupid" {
  description = "Names Of the Security Group"
  type        = list(string)
  default     = ["symfonyapp_SG_Inboundrules", "k8master_inbound"]
}

variable "worker_security_groupid" {
  description = "Names Of the Security Group"
  type        = list(string)
  default     = ["symfonyapp_SG_Inboundrules"]
}