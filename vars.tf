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
  default = "2"
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
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCoUKIEjSdm+/Eiifutn9TLXUiGpgLJ3su0dVj27D3KI0BJQ09eyjnM21eyBkk4oXplFKlqblvYYsbD8Qs/indAcOV4lMnTGCWchajMUYu/7r64zRKuVggJM3M97AhgjDxAV5yeWuJsMFWuqqJtkZM5Rbh6UCXtfdAs9X2JOYwyv06hzoJPUlMzaeTZ5BMyoJwjXERqItDKjAVnG6XuY8I5pJzP+N5XNkLDhyN2UTLcifkqyLrzQxvohVLuYiDyn3C+xJ1QuHgSFS/bkyKik+uBVkatNgbnfdThXu4FZuN90fr1gQ9Rfc2/zwYnkXMt0sZYAtmRGg98/GkFjL4tW+y1QTh1ppsDhYMWrxsO9kUxsItGGnpI4QrIQvrX1yRmbofBllg6h6vEvaxc0XtYlxJTP7PTifZjOqCu6hgPP025pksYKw769KwOLIjmbckqNkDm99nsGCDH15NktdKb6N2ygAHctW+WfGAylqyYwDdhlSXvkQSk93Rkr6r9ViIJKIXGjMOGEBycxlEVp9j8mNKxSPc3MQ0nAfzizkiPM0IAF7J881OyCVF6i2y1bCQVHud0gA7uciePaKOcWCWkHCIqcM8H4XU68rsACpnhHRDwHyWDUpfYYOus4VosclO2vaAEzWb66216lQcM9ErTNxLKR+tX/iDw8OTCWJqCb7ewvQ== ubuntu@ip-172-31-18-73"
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
