# resource "aws_instance" "pritunl" {
#   ami                         = var.ubuntu
#   instance_type               = var.t3
#   subnet_id                   = aws_subnet.public.id
#   associate_public_ip_address = false
#   iam_instance_profile        = aws_iam_instance_profile.role-profile.name
#   vpc_security_group_ids      = ["${aws_security_group.pritunl.id}"]

#   root_block_device {
#     delete_on_termination = true
#     iops                  = 3000
#     volume_size = 50
#     volume_type = "gp3"
#     encrypted   = true
#   }

#   disable_api_termination = true
#   tags = {
#     Name = "${local.name}-pritunl-ec2"
#   }
# }

# resource "aws_eip" "eip_pritunl" {
#   instance = aws_instance.pritunl.id
# }

# resource "aws_ebs_encryption_by_default" "enabled" {
#      enabled = true
# }

