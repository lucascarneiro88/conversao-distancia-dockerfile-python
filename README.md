# conversao-distancia
## Lista de Comandos Kubernetes e Docker

    k3d cluster create aquinome --servers 1 --agents 2 -p "8080:30000@loadbalancer"
    Cria um cluster K3s chamado "aquinome" com 1 servidor e 2 agentes, mapeando a porta 8080 do host para a porta 30000 do load balancer.

    docker build -t aquinome/conversao-distancia:v2 --push .
    Constrói uma imagem Docker a partir do Dockerfile no diretório atual, tagueando-a como aquinome/conversao-distancia:v2 e fazendo o push para o registro Docker.

    kubectl apply -f k8s/deployment.yaml
    Aplica as alterações no recurso especificado pelo arquivo YAML, criando ou atualizando o Deployment e o Service conforme necessário.

    kubectl get all
    Mostra todos os recursos no namespace atual, incluindo pods, deployments, services, etc.

    kubectl get pods
    Exibe todos os pods em execução no namespace atual, mostrando seu status e outros detalhes.

    kubectl describe pod <nome-do-pod>
    Exibe informações detalhadas sobre um pod específico, incluindo eventos, condições e especificações do container.

    kubectl get replicaset
    Lista todos os ReplicaSets no namespace atual.

    kubectl get replicaset,pod
    Exibe tanto os ReplicaSets quanto os pods no namespace atual.

    kubectl get -o wide
    Mostra informações adicionais sobre os recursos listados, como o IP dos pods e os nós em que estão executando.

    kubectl port-forward pod/<nome-do-pod> 8080:5000
    Redireciona o tráfego da porta 8080 do host para a porta 5000 do pod especificado, permitindo acesso local ao serviço do pod.

    kubectl logs <nome-do-pod>
    Exibe os logs de um pod específico, permitindo a visualização do que está acontecendo dentro do container.

    kubectl exec -it <nome-do-pod> -- /bin/sh
    Executa um shell interativo no container de um pod específico, permitindo a execução de comandos dentro do pod.

    kubectl set image deployment/conversao-distancia conversao-distancia=aquinome/conversao-distancia:v2
    Atualiza a imagem do container em um Deployment existente para a nova versão especificada.

    kubectl delete pod <nome-do-pod>
    Remove um pod específico do cluster Kubernetes.

    kubectl get services
    Lista todos os serviços disponíveis no namespace atual.

    kubectl get nodes
    Exibe todos os nós no cluster Kubernetes, mostrando seu status e condições.

    kubectl apply -f k8s/deployment.yaml && kubectl get pod
    Aplica as alterações do arquivo deployment.yaml e em seguida lista os pods.

    kubectl get pods -o json
    Obtém informações sobre os pods no formato JSON.

    kubectl rollout history deployment conversao-distancia
    Exibe o histórico de versões do Deployment conversao-distancia, permitindo ver as atualizações realizadas ao longo do tempo.

    kubectl rollout undo deployment conversao-distancia
    Reverte o Deployment conversao-distancia para a versão anterior.

    kubectl rollout undo deployment conversao-distancia && watch 'kubectl get pod'
    Reverte o Deployment conversao-distancia para a versão anterior e observa a lista de pods em execução em tempo real.