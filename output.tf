# output "public_ip" {
#   value = aws_instance.openvpn.public_ip
# }

# output "instance_id" {
#     value = aws_instance.backend-server.id
# }

output "encrypted_secret_key" {
  value = aws_iam_access_key.veeam-name.encrypted_secret
}

output "access_key" {
  value = aws_iam_access_key.veeam-name.id
}