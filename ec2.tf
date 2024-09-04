resource "aws_instance" "openvpn" {
  ami                         = var.ubuntu
  instance_type               = var.t3
  subnet_id                   = aws_subnet.public.id
  associate_public_ip_address = false
  iam_instance_profile        = aws_iam_instance_profile.role-profile.name
  vpc_security_group_ids      = ["${aws_security_group.openvpn.id}"]
  key_name                    = var.key

  root_block_device {
    delete_on_termination = true
    # iops                  = 3000
    volume_size = 30
    volume_type = "gp2"
    encrypted   = true
  }

  disable_api_termination = true
  tags = {
    Name = "${local.name}-open-vpn"
  }
}

resource "aws_eip" "eip_openvpn" {
  instance = aws_instance.openvpn.id
}

resource "aws_ebs_encryption_by_default" "enabled" {
     enabled = true
}

