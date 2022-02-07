package main

import data.kubernetes

name = input.metadata.name

deny[msg] {
	kubernetes.is_helmrelease
	input.spec.values.ingress.enabled = true
	not input.spec.values.ingress.tls

	msg = sprintf("Found HelmRelease %s with ingress enabled but no SSL certificate", [name])
}