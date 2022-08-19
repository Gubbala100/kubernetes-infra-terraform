resource "aws_key_pair" "k8s_key" {
  key_name   = var.keyname
  public_key = var.publickey
}