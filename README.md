# Task 2

ONLY FOR DEMO PURPOSE

# Requirements

Install **helm** : https://helm.sh/docs/intro/install/
Install **Terraform** : https://learn.hashicorp.com/tutorials/terraform/install-cli
Install **TFSec** : https://aquasecurity.github.io/tfsec/v1.21.0/guides/installation/
Install **Trivy** : https://aquasecurity.github.io/trivy/v0.18.3/installation/
Install **Checkov** : https://www.checkov.io/2.Basics/Installing%20Checkov.html

# Set-up

Install **k3s** : `curl -sfL https://get.k3s.io | sh -`
Verify : `k3s kubectl get node`

Copy the content of k3s.yaml into your kubeconfig file : `cp /etc/rancher/k3s/k3s.yaml ~/.kube/config`

Do `terraform apply -auto-approve`
Wait
Do `kubectl get svc` and copy the cluster-ip into your web browser

# Pseudo CICD

Do `./cicd.sh`
Terraform scan should fail