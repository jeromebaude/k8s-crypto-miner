# k8s-crypto-miner
Deploy Crypto Miner app to test your Malicious File detection mechanism

Just follow the steps below

## Deploy the Application

(you can deploy it within your preferred namespace, here we use default for simplicity)

```
kubectl apply -f https://raw.githubusercontent.com/jeromebaude/k8s-crypto-miner/main/k8s-crypto-miner.yaml
```

Check pods status

```
kubectl get pods
```

Check logs

```
kubectl logs -f crypto-miner-69bc9599f7-qhttn
```