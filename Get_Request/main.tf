data "http" "my_ip" {
    url = "https://ifconfig.me/ip"
}

output "my_ip"{
    value = data.http.my_ip.response_body
}