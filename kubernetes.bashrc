# Basic Kubectl Aliases
alias k='kubectl'
alias kc='kubectl config'
alias kx='kubectl config current-context'
alias kns='kubectl config set-context --current --namespace'

# Context & Namespace Management
alias kcg='kubectl config get-contexts'
alias kcu='kubectl config use-context'
alias kcv='kubectl config view'
alias kgns='kubectl get namespaces'

# Get Resources
alias kg='kubectl get'
alias kgp='kubectl get pods'
alias kgs='kubectl get services'
alias kgd='kubectl get deployments'
alias kgn='kubectl get nodes'
alias kgi='kubectl get ingress'
alias kgc='kubectl get configmaps'
alias kgsec='kubectl get secrets'
alias kgpv='kubectl get pv'
alias kgpvc='kubectl get pvc'

# Get with Wide Output
alias kgpw='kubectl get pods -o wide'
alias kgsw='kubectl get services -o wide'
alias kgdw='kubectl get deployments -o wide'
alias kgnw='kubectl get nodes -o wide'

# Get All Resources
alias kga='kubectl get all'
alias kgaa='kubectl get all --all-namespaces'

# Describe Resources
alias kd='kubectl describe'
alias kdp='kubectl describe pod'
alias kds='kubectl describe service'
alias kdd='kubectl describe deployment'
alias kdn='kubectl describe node'
alias kdi='kubectl describe ingress'

# Logs & Debugging
alias kl='kubectl logs'
alias klf='kubectl logs -f'
alias klt='kubectl logs --tail'
alias klp='kubectl logs --previous'
alias klft='kubectl logs -f --tail'

# Execute Commands in Pods
alias ke='kubectl exec'
alias kei='kubectl exec -it'
alias ksh='kubectl exec -it -- sh'
alias kbash='kubectl exec -it -- bash'

# Apply & Delete
alias ka='kubectl apply'
alias kaf='kubectl apply -f'
alias kd='kubectl delete'
alias kdf='kubectl delete -f'
alias kdel='kubectl delete'

# Port Forwarding
alias kpf='kubectl port-forward'

# Create Resources
alias kcr='kubectl create'
alias krun='kubectl run'

# Edit Resources
alias ked='kubectl edit'
alias kedp='kubectl edit pod'
alias keds='kubectl edit service'
alias kedd='kubectl edit deployment'

# Scale Deployments
alias ksc='kubectl scale'
alias kscd='kubectl scale deployment'

# Rollout Management
alias kro='kubectl rollout'
alias kros='kubectl rollout status'
alias krou='kubectl rollout undo'
alias kroh='kubectl rollout history'
alias kror='kubectl rollout restart'

# Top Commands (Resource Usage)
alias ktop='kubectl top'
alias ktop-node='kubectl top nodes'
alias ktop-pod='kubectl top pods'

# Cluster Info
alias kci='kubectl cluster-info'
alias kv='kubectl version'
alias kapi='kubectl api-resources'

# Useful Combined Commands
alias kgpall='kubectl get pods --all-namespaces'
alias kgsall='kubectl get services --all-namespaces'
alias kgdall='kubectl get deployments --all-namespaces'

# Watch Commands
alias kgpw='kubectl get pods -w'
alias kgsw='kubectl get services -w'
alias kgdw='kubectl get deployments -w'

# Quick Functions for Common Tasks
# Get pod logs by name pattern
alias klogp='f() { kubectl logs -f $(kubectl get pods | grep "$1" | head -1 | awk "{print \$1}"); }; f'

# Get into first pod matching pattern
alias kexecp='f() { kubectl exec -it $(kubectl get pods | grep "$1" | head -1 | awk "{print \$1}") -- bash; }; f'

# Delete all pods matching pattern
alias kdelp='f() { kubectl delete pods $(kubectl get pods | grep "$1" | awk "{print \$1}"); }; f'

# Get pods by label
alias kgpl='f() { kubectl get pods -l "$1"; }; f'

# Restart deployment
alias krestart='f() { kubectl rollout restart deployment "$1"; }; f'

# Quick namespace switch
alias kn='f() { kubectl config set-context --current --namespace="$1"; echo "Switched to namespace: $1"; }; f'

# Show current namespace
alias kcn='kubectl config view --minify --output "jsonpath={..namespace}" | xargs echo "Current namespace:"'

# Emergency Commands
alias kemergency='kubectl get events --sort-by=.metadata.creationTimestamp'
alias kfails='kubectl get pods --field-selector=status.phase=Failed'
alias kpending='kubectl get pods --field-selector=status.phase=Pending'

# YAML Output
alias kgy='kubectl get -o yaml'
alias kgyp='kubectl get pods -o yaml'
alias kgys='kubectl get services -o yaml'
alias kgyd='kubectl get deployments -o yaml'

# JSON Output
alias kgj='kubectl get -o json'
alias kgjp='kubectl get pods -o json'
alias kgjs='kubectl get services -o json'
alias kgjd='kubectl get deployments -o json'

# Dry Run
alias kdr='kubectl --dry-run=client -o yaml'

# Force Delete
alias kfd='kubectl delete --force --grace-period=0'
