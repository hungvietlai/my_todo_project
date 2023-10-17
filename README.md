# My_todo_project

This repository contains the source code and necessary configurations for `my_todo_project`, a simple to-do application developed in Python.

---

## Table of Contents

- [Architecture](#architecture)
- [Prerequisites](#prerequisites)
- [Deployment](#deployment)
- [Cleanup](#cleanup)
- [License](#license)

---

## Architecture

```plaintext
my_todo_project/
├── Dockerfile
├── README.md
├── jenkinsfile
├── requirements.txt
└── todo_app
    ├── app.py
    └── templates
        └── index.html
```

---

## Prerequisites

Ensure the following tools are installed:

- Docker
- Jenkins (with necessary plugins)
- Python environment

Verify your installations:

```bash
docker --version
python --version

```
---

## Deployment

### 1. Clone the repository: 

```bash
git clone https://github.com/hungvietlai/my_todo_project.git

```
### 2. Navigate to the project directory:

```bash
cd my_todo_project

```
### 3. Build the Docker image:

```bash
docker build -t hungvietlai/my_todo_app . # Change the tag to match your Docker Hub username

```
### 4. Create and run container in detach mode:

```bash
docker run -d -p 5000:5000 hungvietlai/my_todo_app  #The website will be available on localhost port 5000

```
### 5.(Optional) Deploy the app using Jenkins:

- Use the provided Jenkinsfile to automate the deployment pipeline.

## Cleanup

```bash

docker stop <container_id>
docker rmi -f hungvietlai/my_todo_app

```
## Licensing

- This project is licensed under the MIT License. For the full text of the license, see the LICENSE file.

![todo_app](https://github.com/hungvietlai/my_todo_project/blob/master/images/todo_app.png)