provider "kubernetes" {
  load_config_file = "false"

  host = "${var.k8s.host}"

  client_certificate     = "${file(${var.k8s.client.certificate})}"
  client_key             = "${file(${var.k8s.client.key})}"
  cluster_ca_certificate = "${file(${var.k8s.ca.certificate})}"
}
