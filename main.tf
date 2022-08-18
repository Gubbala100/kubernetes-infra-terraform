resource "aws_instance" "webapp" {

  count           = var.instance_count
  ami             = data.aws_ami.ubuntu.id
  instance_type   = var.instancetype
  security_groups = var.security_groupid
  tags = {
    Name        = var.servername[count.index]
    Environment = var.environment
  }
  # user_data = element(data.template_file.install.*.rendered, count.index)
}