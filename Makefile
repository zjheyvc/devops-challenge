APP_NAME=local-app
PORT=5000

build:
	docker build -t $(APP_NAME) .

build-nc:
	docker build --no-cache -t $(APP_NAME) .

release: build-nc run

run:
	docker run -i -t --rm -p=$(PORT):$(PORT) --name="$(APP_NAME)" $(APP_NAME)

stop:
	docker stop $(APP_NAME); docker rm $(APP_NAME)

k8s-dev:
	kubectl apply -f argocd/overlays/develop; kubectl get app -n argocd

k8s-main:
	kubectl apply -f argocd/overlays/main; kubectl get app -n argocd

