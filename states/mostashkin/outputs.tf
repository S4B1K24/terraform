output "ips" {
  value = flatten(yandex_compute_instance.testvm[*].network_interface[*].nat_ip_address)
}

output "lb" {
  value = yandex_lb_network_load_balancer.lb.listener[0].external_address_spec.address
}