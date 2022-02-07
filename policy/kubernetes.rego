package kubernetes

is_service {
	input.kind = "Service"
}

is_deployment {
	input.kind = "Deployment"
}

is_helmrelease {
	input.kind = "HelmRelease"
}

is_namespace {
	input.kind = "Namespace"
}