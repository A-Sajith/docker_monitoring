# Docker Server Monitor 

Un projet **Docker + Bash** pour surveiller plusieurs serveurs en continu.  
Le conteneur ping les serveurs définis et log leur statut (UP / DOWN) dans un fichier log.  


## Fonctionnalités

- Ping plusieurs serveurs toutes les 10 secondes  
- Logs accessibles via volume Docker sur l’hôte  
- Affichage UP / DOWN pour chaque serveur  
- Conteneur léger, facilement déployable  


## Architecture du projet

docker_server_monitor
│
├── docker-compose.yml
├── Dockerfile
├── README.md
└── monitor
└── monitor.sh


- `monitor.sh` : script Bash qui ping les serveurs et log les résultats  
- `Dockerfile` : construit le conteneur basé sur Alpine avec Bash  
- `docker-compose.yml` : lance le conteneur et monte le volume pour les logs  


## Installation & Lancement

1. Cloner le projet :

```bash
git clone https://github.com/TonPseudo/docker-server-monitor.git
cd docker-server-monitor
```
Lancer Docker Compose :
```bash
docker compose up -d --build
```
Consulter les logs en temps réel sur Docker avec :
```bash
docker compose logs -f
```