provider "kubernetes" {
  load_config_file = "false"

  host = "${var.k8s.host}"

  username = "${var.k8s.username}"
  password = "${var.k8s.password}"
}
