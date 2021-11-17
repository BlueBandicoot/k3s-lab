# Kubernetes Cluster 

![Raspbernetes](https://github.com/BlueBandicoot/k3s/blob/main/docs/img/raspbernetes.png?raw=true "Raspbernetes")

## Git repository structure

+ ansible -- ansible scripts for deployment
+ cluster
    + base -- Entry point for Flux v2, contains global settings
    + apps -- Applications which can be pruned when not tracked by Git anymore
    + core -- Applictions which can not be pruned (depends on crds folder) when not tracked by Git anymore
    + crds -- CustomResourceDefinitions necessary
+ docs -- Keeps documentation
+ README.md
+ scripts -- Contains diverse scripts
+ terraform -- Containers terraform scripts

## Nodes
+ OS:
    **Ubuntu 20.04.5 aarch64** 
+ Domain: 
    **k8s.lab.tbe**
+ HAProxy IP:
    **10.1.0.160**

| Hostname | IP eth0 | IP wlan0 | Rôle |
|---|---|---|---|
| **master1**  | 172.16.1.12 | 10.1.0.152 | Master node + KeepAlived + HAProxy |
| **master2**  | 172.16.1.13 | 10.1.0.153 | Master node + KeepAlived + HAProxy |
| **master3** | 172.16.1.14 | 10.1.0.154 | Master node + KeepAlived + HAProxy |
| **worker1** | 172.16.1.15 | 10.1.0.155 | Worker node |
| **worker2** | 172.16.1.16 | 10.1.0.156 | Worker node |
| **worker3** | 172.16.1.17 | 10.1.0.157 | Worker node |
| **worker4** | 172.16.1.18 | 10.1.0.158 | Worker node |
| **worker5** | 172.16.1.19 | 10.1.0.159 | Worker node |
| **dns** | 172.16.1.10 | 10.1.0.150 | PowerDNS, Vault, MinIO |
| **log/monitoring** | 172.16.1.11 | 10.1.0.151 | Grafana (Prometheus+Loki) or ELK |

## Physical position

| Cirrus |
|---|
| Master1 |
| Master2 |
| Worker4 |
| Worker5 |
| DNS |

| Nimbus |
|---|
| Master3 |
| Worker1 |
| Worker2 |
| Worker3 |
| OBS |


## Choices

+ Distribution: **k3s**
+ Bare-metal: **MetalLB**
+ GitOps: Mix of **Ansible** for host management and **Flux v2** for cluster management
+ Networking: **Calico**
+ Ingress: **Traefik**
+ Storage: **rook-ceph**
+ Backups: **K10 Kasten**
+ Certificate management: **cert-manager**
+ Secret management: **sops**, **Vault**?
+ Identity Provider: **keycloak**
+ Monitoring: kube-prometheus-stack
+ Log managment: Loki
+ Misc: **external-dns** for automated dns

### Tools references/documentations

## Deployment



### Prerequisites

### Outside cluster monitoring & log management 

#### Monitoring

#### Log management

#### PowerDNS setup

[Here](docs/powerdns.md) for a detailed guide

### Cluster deployment

### Tools deployment ( GitOps methodology )

