provider "kubernetes" {
	host = "${var.k8s.host}"
	client_certificate = "${base64decode(var.k8s.client.certificate)}"
	client_key = "${base64decode(var.k8s.client.key)}"
	client_ca_certificate = "${base64decode(var.k8s.client.ca.certificate)}"
}

resource "kubernetes_pod" "k8s_mariadb" {
	metadata {
		name = "k8s_mariadb"
	}

	spec {
		container {
			image = "mariadb:latest"


		}
	}
}
