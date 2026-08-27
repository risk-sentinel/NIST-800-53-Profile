# Synthetic Terraform for generating checkov JUnit XML fixtures.
# Deliberately non-compliant in specific, varied ways so the output exercises
# passes, failures, inline skips, module paths and XML escaping.

resource "aws_s3_bucket" "unencrypted" {
  bucket = "example-fixture-bucket"
}

resource "aws_security_group" "wide_open" {
  name        = "fixture-sg"
  description = "Ingress from anywhere — a \"quoted\" description, to exercise XML escaping"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# checkov:skip=CKV_AWS_23:Fixture — proves how an inline skip renders in JUnit
resource "aws_security_group_rule" "documented_skip" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.wide_open.id
}

module "storage" {
  source = "./modules/storage"
}
