# Workflow
![scope](docs/workflow.png)

The current solution proposed was inspired by GitOps.

**GitHub Actions** provides many useful options to complete this concept.

**GitHub repositories** capable of sharing code.

**GitHub Container Registry** is very friendly to the GitHub ecosystem.

**Kubernetes** the orquestator of containers by excellence.

**ArgoCD** with the operator is essential to up and running the application and posibility work as code.

**Datadog** is a powerful SaaS that allows us to generate customizable monitoring of containers.

## Requirements
* GitHub Personal Token

### Local
* Docker
* Make

### Kubernetes
* Kubectl
* Helm
* Cluster Kubernetes
* ArgoCD + Operator Installed
* Datadog Agent + Datadog Monitor Operator Installed

## Usage

### On Local

_Build Application_
```bash
make build
```

_Run Application_
```bash
make run
```
_Show `local application` on:_ http://localhost:5000

### On Kubernetes

_Deploy Argo Applications_
```bash
make app-dev
make app-main
```

_Deploy Datadog monitors_
```bash
make datadog-rules
```

_Running Up_
```bash
make up
```

_Clean_
```bash
make clean
```

_Show application on kubernetes with `port-forward`:_
```bash
make show-dev
make show-main
```