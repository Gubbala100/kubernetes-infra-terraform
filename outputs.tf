output "master_public_ip" {
 value       = aws_instance.master_instance.*.public_ip
 description = "Master instance Public IP"
}