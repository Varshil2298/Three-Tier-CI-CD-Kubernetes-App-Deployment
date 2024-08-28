# Three-Tier Web Application Deployment on Kubernetes using AWS EKS, ArgoCD, Prometheus, Grafana, and Jenkins


Welcome to the Three-Tier Web Application Deployment project! 🚀

This repository hosts the implementation of a Three-Tier Web App using ReactJS, NodeJS, and MongoDB, deployed on AWS EKS. The project covers a wide range of tools and practices for a robust and scalable DevOps setup.

## Table of Contents
- [Application Code](#application-code)
- [Jenkins Pipeline Code](#jenkins-pipeline-code)
- [Jenkins Server Terraform](#jenkins-server-terraform)
- [Kubernetes Manifests Files](#kubernetes-manifests-files)
- [Project Details](#project-details)

# Three-Tier CI/CD Kubernetes App Deployment

## Application Code
The `Application-Code` directory contains the source code for the Three-Tier Web Application. This is where you can delve into both the frontend and backend components to explore their implementations.

## Jenkins Pipeline Code
In the `Jenkins-Pipeline-Code` directory, you'll find Jenkins pipeline scripts tailored for the backend and frontend. These scripts are designed to automate the CI/CD process, streamlining integration and deployment of the application.

## Jenkins Server Terraform
The `Jenkins-Server-TF` directory contains Terraform scripts for provisioning the Jenkins Server on AWS. These scripts simplify the setup and management of your infrastructure.

## Kubernetes Manifests Files
The `Kubernetes-Manifests-Files` directory includes Kubernetes manifests required for deploying the application on AWS EKS. These files are structured to follow GitOps best practices, and they are located in a separate repository to ensure efficient management and version control.

## Project Overview

### 🧰 **Tools and Technologies Used**
- **Terraform & AWS CLI:** For seamless AWS infrastructure management
- **Jenkins, SonarQube, Terraform, Kubectl:** To establish a robust CI/CD pipeline
- **Helm, Prometheus, Grafana:** For comprehensive monitoring solutions
- **ArgoCD:** Enabling GitOps workflows for automated Kubernetes deployments

### 🚀 **High-Level Project Workflow**
- Set up IAM Users and leverage Terraform for efficient AWS provisioning
- Deploy Jenkins with integrated AWS services
- Create an EKS Cluster with Load Balancer configuration
- Utilize Private ECR repositories for secure image storage
- Implement Helm charts for efficient monitoring and alerting
- Automate Kubernetes deployments with ArgoCD, ensuring smooth GitOps practices


## 📈 Project Journey

The journey covered everything from setting up tools to deploying a Three-Tier app, ensuring data persistence, and implementing CI/CD pipelines.

---

Happy Coding! 🚀

