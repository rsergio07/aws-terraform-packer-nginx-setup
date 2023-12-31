output "nginx_page_url" {
  value = aws_lb.main.dns_name
}

