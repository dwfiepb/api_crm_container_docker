# CRM API - Container (Docker)

This repository contains a Docker Compose setup to run the CRM API easily.

## Prerequisites

- [Git](https://git-scm.com/downloads)
- [Docker](https://docs.docker.com/get-docker/) 
- [Docker Compose](https://docs.docker.com/compose/install/)

## Setup Instructions

1. **Clone this repository**

   ```bash
   git clone https://github.com/dwfiepb/api_crm_container_docker.git crm_api_container
   cd crm_api_container
   ```

2. **Place the .env file in folder specified above**

```.env
GITHUB_TOKEN="PLACE_GITHUB_PAT"
REPO_URL="github.com..[your user/repo]..git"
DATABASE_URL="YOUR_DB_CONNECTION_STRING"
AUTH_TOKEN="PLACE_YOUR_AUTHORIZATION_TOKEN_HERE"
NODE_ENV=production
PORT=3000 # Port to expose application
```

3. **Run docker compose**

   ```bash
    docker compose up -d
   ```

4. **Open host address in browser (default to host port 80)**
