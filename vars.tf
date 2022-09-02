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
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDOj4ll7EcijlwwqyfYTTKR6jpmG3I7SMOwEyikMSQR/1sAfILDU9aMfQewXIIyLoQiFkCxEXYSJzv+i6gd8lU/U3yYTWDBUsNOf5nC4foCuwtOAdfcATQSzg6TK1V03DtyXcUAr1KzsgqcSeAtKgRtga5ZQaY/wynWxbh0099Bpv65rmWSPODu7B+eizmFWMeR49J4502bdPDSpz5E2nJ7jXQN671ZcNNI4/h4/04xPM7aOEyZ0+UxQlRPKT03qlUVjvqz9TCU03ThMWhVrmtLxEhL/N5gkM+PJkwyoHgm3SJHc6IczPbHhkg5Bv3op0jEL5sSeZQvtJvPP3cTNU6gOpiOIF6dVFWpRXKV4imtMbYeKQcycAlFeT8QNBW8dGDaKld9B/zHXJZVMnbBl93fUHQPOvHVXgMYd4frIix/T7xC+LXDi9ZI74ghHcj/XUTCMVdYpw9POBRJAq0BUUgK/JR3zc3SW5QT9VYVvmkWBdS/h03J+Ciwl7ptIdbsIQveEyBr/UDqXjqZ47bl7X3vmSjdxkySIJH6WctKAD/TmeVuNgId+fAnXzExFQ2ebC2l05HpVENkIhVzcEolhwaE6UiUn/4v7CR3/9+rYWivhyEj5mexoyi/1lxYL+9Uy9ySSxX8tWtrMNtr+KNb1ovhSCZ8Uuh8y4U2as1t04tgTQ== jaggu199@gmail.com"
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
  default     = ["k8scluster_SG_Inboundrules", "k8master_inbound"]
}

variable "worker_security_groupid" {
  description = "Names Of the Security Group"
  type        = list(string)
  default     = ["k8scluster_SG_Inboundrules"]
}