kubectl delete -k ./
kubectl delete -f ./pv/
sleep 1
kubectl create -f ./pv/
kubectl create -k ./
