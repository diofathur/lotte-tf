resource "aws_key_pair" "pti-key" {
  key_name = "${local.name}-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCIzE5PfmUYrR9LRxfO6rMa9mGxNGaVBfc4CEYBIOehNFjqiVlYYGDulrOKK1tKTzPDTfAgKhs9GDGKPiecy1jxAai2VlkXBXeJlGQRj3hkiUwfAp+zUBmOOquDyhGWdGe4Wug37BT/AysPYXG3OZnn2SWw6aYKaQ0pOAw31p7rq/JOJ/PmokI+oytOl7HIJA+dqpegFG1rWaBVRMU0Jgp42nNBBsZagDYGs9wSe5QUC1RzYmI9eCpq1LG4tv1fkFN/l2lw+x6RB+b1lgN1XTAmDu8/OFXln0Fju6NUVcXSV/lUZtnkQ6LTmNx/yP5iiVRPLR8B2KiO8oXRzuGMyTD/ rsa-key-20240904"
}