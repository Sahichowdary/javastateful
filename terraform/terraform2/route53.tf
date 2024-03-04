resource "aws_route53_zone" "poc_route53_zone" {
  name = "poc-java.com"

  tags = {
    Environment = "test"
  }
}


resource "aws_route53_record" "route_poc" {
  zone_id = aws_route53_zone.poc_route53_zone_id
  name    = "poc-java.com"
  type    = "A"
  ttl     = 300
#  records = [xxxxxxxxxx]
}

