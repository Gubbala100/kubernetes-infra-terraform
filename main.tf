resource "aws_instance" "master_instance" {
  count           = var.masterinstance_count
  ami             = data.aws_ami.ubuntu.id
  instance_type   = var.masterinstancetype
  security_groups = var.master_security_groupid
  key_name      = aws_key_pair.k8s_key.key_name
  tags = {
    Name        = var.masterservername[count.index]
    Environment = var.environment
  }
}

resource "aws_instance" "worker_instance" {
  count           = var.workerinstance_count
  ami             = data.aws_ami.ubuntu.id
  instance_type   = var.workerinstancetype
  security_groups = var.worker_security_groupid
  key_name      = aws_key_pair.k8s_key.key_name
  tags = {
    Name        = var.workerservername[count.index]
    Environment = var.environment
  }
}