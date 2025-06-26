# Docker Swarm Management Aliases
alias ds='docker swarm'
alias dsi='docker swarm init'
alias dsj='docker swarm join'
alias dsl='docker swarm leave'
alias dsu='docker swarm unlock'

# Docker Service Aliases
alias dsc='docker service create'
alias dsl='docker service ls'
alias dsi='docker service inspect'
alias dsu='docker service update'
alias dsr='docker service rm'
alias dss='docker service scale'
alias dsps='docker service ps'
alias dslogs='docker service logs'

# Docker Stack Aliases
alias dst='docker stack'
alias dstd='docker stack deploy'
alias dstl='docker stack ls'
alias dstr='docker stack rm'
alias dsts='docker stack services'
alias dstp='docker stack ps'

# Docker Node Aliases
alias dn='docker node'
alias dnl='docker node ls'
alias dni='docker node inspect'
alias dnu='docker node update'
alias dnr='docker node rm'
alias dnp='docker node promote'
alias dnd='docker node demote'

# Docker Logs & Debugging Aliases
alias dl='docker logs'
alias dlf='docker logs -f'
alias dlt='docker logs --tail'
alias dlft='docker logs -f --tail'
alias dls='docker logs --since'
alias dlu='docker logs --until'

# Container Inspection & Debugging
alias di='docker inspect'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias dpsq='docker ps -q'
alias dpsaq='docker ps -aq'
alias dst='docker stats'
alias dtop='docker top'
alias dex='docker exec -it'
alias dexb='docker exec -it bash'
alias dexsh='docker exec -it sh'

# System & Resource Monitoring
alias ddf='docker system df'
alias dsp='docker system prune'
alias dspf='docker system prune -f'
alias dspa='docker system prune -a'
alias dinfo='docker system info'
alias devents='docker system events'

# Network Debugging
alias dnl='docker network ls'
alias dni='docker network inspect'
alias dnc='docker network create'
alias dnr='docker network rm'
alias dnp='docker network prune'

# Volume Debugging
alias dvl='docker volume ls'
alias dvi='docker volume inspect'
alias dvc='docker volume create'
alias dvr='docker volume rm'
alias dvp='docker volume prune'

# Combined Useful Commands
alias dclean='docker system prune -a -f --volumes'
alias dstop='docker stop $(docker ps -q)'
alias drm='docker rm $(docker ps -aq)'
alias drmi='docker rmi $(docker images -q)'

# Swarm-specific Debugging
alias dswinfo='docker info | grep -A 20 "Swarm:"'
alias dnodes='docker node ls --format "table {{.ID}}\t{{.Hostname}}\t{{.Status}}\t{{.Availability}}\t{{.ManagerStatus}}"'
alias dservices='docker service ls --format "table {{.ID}}\t{{.Name}}\t{{.Mode}}\t{{.Replicas}}\t{{.Image}}"'
alias dstacks='docker stack ls --format "table {{.Name}}\t{{.Services}}\t{{.Orchestrator}}"'

# Quick service logs with follow
alias slog='f() { docker service logs -f "$1"; }; f'
alias slogn='f() { docker service logs -f --tail "$2" "$1"; }; f'

# Quick container logs with timestamps
alias clog='f() { docker logs -f -t "$1"; }; f'
alias clogn='f() { docker logs -f -t --tail "$2" "$1"; }; f'
