up:
	kubectl apply -f mongo-secret.yaml
	kubectl apply -f mongo.yaml
	kubectl apply -f mongo-configmap.yaml 
	kubectl apply -f mongo-express.yaml

down:
	kubectl delete -f mongo-express.yaml
	kubectl delete -f mongo-configmap.yaml 
	kubectl delete -f mongo.yaml
	kubectl delete -f mongo-secret.yaml

run:
	minikube service mongo-express-service
