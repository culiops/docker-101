# Docker 101

A basic introduction to Docker for DevOps, showcasing how to run WordPress with MySQL using both Docker commands and Docker Compose.

## Repository Structure
```
docker-101/ 
├── README.md 
└── basic-docker-for-devops/ 
    ├── docker-compose.yml 
    └── run-containers.sh
```

## What's Included

- `docker-compose.yml`: Configuration file for running WordPress and MySQL using Docker Compose
- `run-containers.sh`: Bash script demonstrating how to run the same containers using Docker CLI commands

## Prerequisites

- Docker installed on your system
- Docker Compose installed (for the Docker Compose method)

## Usage

### Method 1: Using Docker Compose

1. Navigate to the basic-docker-for-devops directory:
   ```sh
   cd basic-docker-for-devops
   ```
2. Start the containers:
    ```
    docker-compose up -d
    ```
3. Access WordPress at http://localhost:8000

4. To stop the containers:
    ```
    docker-compose down
    ```

### Method 2: Using Docker Commands
1. Navigate to the basic-docker-for-devops directory:
    ```
    cd basic-docker-for-devops
    ```
2. Make the script executable and run it:
    ```
    chmod +x run-containers.sh
    ./run-containers.sh
    ```

3. Access WordPress at http://localhost:8000
4. To stop the containers:
    ```
    docker stop app db
    ```


## Volumes
This setup uses Docker volumes to persist data:

- wordpress: Stores WordPress files
- db: Stores the MySQL database

## Environment Configuration
The WordPress installation uses the following database credentials:

- Database name: culiop_demo
- Username: culiop_demo
- Password: culiop_demo

> ⚠️ **WARNING:** This code is for tutorial purposes only. Do not use these configurations in production environments.


## Health Checks
The WordPress container includes health checks to ensure the application is responding correctly.