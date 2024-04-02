# Cloud-1
42Seoul Outer-circle Project


**Inception: Automated Multi-container Web Deployment**
This repository hosts the Inception project, an endeavor inspired by the movie "Inception" to automate the deployment of a web application architecture using containerization. Unlike the complex layers of dreams in the film, here we aim to simplify and automate the deployment of web services, ensuring each process runs in its own container for isolation and scalability.

**Project Overview:**

Objective: Deploy a WordPress website alongside essential services like PHPMyAdmin and a SQL database, each running in separate containers. This setup should ensure high availability, scalability, and security.

Automation: Utilizing Ansible, we automate the deployment process to a cloud instance provided by the provider of your choice, though a partnership with Scaleway is mentioned for resource provision.

Resilience: The architecture ensures the website remains operational even after server reboots, preserving all data including images, user accounts, and posts.

Security: Access to the services is restricted and secured, preventing direct internet access to sensitive components like the database.

Key Features:
Docker-Compose: For managing multi-container deployments.
Persistent Data: Ensuring data durability across reboots.
Scalability: Ability to deploy on multiple servers in parallel.
Security: Limited public access, with considerations for implementing TLS.
Automated Deployment: Through scripts, ensuring minimal manual intervention.
Note: This project requires managing resources with care to avoid unintended charges. Partnerships such as with Scaleway may provide resources; however, the choice of provider is at the discretion of the participant, with cost implications to be managed accordingly.

## Mandatory part
The deployment of your application must be fully automated.

We suggest you use Ansible but you are free to use another tool if you wish.
It is imperative to provide a functional site equivalent to the one obtained with Inception just using your script.

You need to install a simple WordPress site on an instance. You must ensure that:
* Your site can restart automatically if the server is rebooted.
* In case of reboot all the data of the site are persisted (images, user accounts, articles, ...).
* It is possible to deploy your site on several servers in parallel.
* The script must be able to function in an automated way with for only assumption an ubuntu 20.04 LTS like OS of the target instance running an SSH daemon and with Python installed.
* Your applications will run in separate containers that can communicate with each other (1 process = 1 container)
* Public access to your server must be limited and secure (for example, it is not possible to connect directly to your database from the internet).
* The services will be the different components of a WordPress to install by yourself. For example Phpmyadmin, MySQL, ...
* You must have a docker-compose.yml.
* You will need to ensure that your SQL database works with WordPress and PHPMyAdmin.
* Your server should be able, when possible, to use TLS.
* You will need to make sure that, depending on the URL requested, your server redirects to the correct site.


---

## Project Description

This project automates the deployment of a WordPress website alongside essential services such as PHPMyAdmin and a SQL database, each running in separate containers. It leverages Ansible for automation, ensuring high availability, scalability, and security. The setup is designed to run on AWS EC2 instances and virtual machines, both equipped with Ubuntu 20.04.

## Environment Setup

The project uses two instances:

One AWS EC2 instance
One virtual machine
Both instances run Ubuntu 20.04 and utilize a docker-compose.yml file for deploying services in containers.

## Usage Instructions

1. Environment Preparation
make set: Installs Docker, Docker-compose, and Python packages on both instances.
2. Deployment
make all: Copies Dockerfiles and .env.j2 files to the instances and executes them to start the deployment process.
3. Cleanup Options
make clean: Stops and removes Docker containers without deleting volumes. This command ensures data persistence across deployments.
make fclean: Fully cleans the setup by stopping and removing Docker containers, deleting all volumes, and removing copied Dockerfiles. This command resets the environment.
4. Managing Sensitive Data with Ansible Vault
To modify encrypted values, navigate to the vars folder and execute ansible-vault edit vault.yml. Access to the values is secured with a vault password, ensuring sensitive data remains protected.

## Key Features

Automated Deployment: Fully automated setup and deployment with minimal manual intervention.
Scalability: Supports deployment on multiple servers in parallel.
Security: Restricts public access and secures sensitive components, with the option to implement TLS for enhanced security.
Persistence: Ensures data durability across reboots by using persistent volumes.
Flexibility: Offers cleaning options to manage the deployment lifecycle efficiently.
This guide simplifies the operation of your web application architecture, emphasizing automation, security, and scalability, inspired by the innovative spirit of the "Inception" project.

---

# Learning Outcomes and skills develop
Throughout the course of this project, I had the opportunity to deepen my understanding and enhance my skills in several key areas of DevOps, containerization, and cloud computing. Below are the significant capabilities I developed and the knowledge I acquired:

## Containerization with Docker
Docker and Docker Compose Mastery: Learned how to create and manage multi-container applications using Docker and Docker Compose. This project helped me understand the importance of containerization in ensuring consistency across different development and deployment environments.
Container Networking: Gained insights into Docker networking, enabling separate containers to communicate with each other, essential for deploying applications that require multiple services (e.g., WordPress, MySQL, and PHPMyAdmin) to work together seamlessly.

## Automation with Ansible
Automation Skills: Developed proficiency in automation by using Ansible (though it was suggested, I explored its capabilities deeply), automating the deployment process from start to finish. This skill is invaluable for scaling deployments and ensuring reproducibility across environments.
Scripting and Configuration Management: Enhanced my ability to write Ansible playbooks for configuration management, enabling the automatic setup of servers, installation of necessary packages, and configuration of applications.

## Cloud Services and Deployment
Cloud Service Providers: Explored various cloud service offerings by deploying the project on platforms such as Scaleway, AWS, and GCP. This experience taught me how to assess and choose the right provider based on project requirements and budget constraints.
Resource Management: Learned the importance of managing cloud resources efficiently to avoid unnecessary costs, gaining practical experience in optimizing server sizes and services according to the project's needs.

## Security and Networking
Secure Configuration: Acquired knowledge on securing applications by limiting public access and securing connections. Implemented strategies to prevent direct access to databases from the internet and enforced the use of TLS where possible.
Networking and Redirection: Understood the nuances of networking within cloud environments, including dedicated IP management and configuring services to respond correctly based on the requested URL.

## Continuous Learning and Documentation
Research and Documentation: This project underscored the importance of reading documentation and researching to learn new tools and technologies like K8s, K3s, and K3d. It has improved my ability to digest technical documents and apply learned concepts practically.
Writing Comprehensive Documentation: Learned the value of clear and thorough documentation, both for personal reference and to assist others. This README is a testament to the project's journey and my growth as a developer.

## Project Management
Attention to Detail: Given the project's scope, managing each component meticulously was crucial. This enhanced my attention to detail, especially in monitoring resource usage and ensuring the project stays within budget constraints.
Problem-Solving: Faced with various challenges throughout the project, I honed my problem-solving skills. Each issue, whether related to configuration, networking, or security, was an opportunity to learn and apply new solutions.
This project was not just a technical endeavor but a comprehensive learning experience that broadened my understanding of modern DevOps practices, cloud computing, and the importance of security in web applications. I am eager to apply these skills and knowledge to future projects and continue on my path of lifelong learning in technology.


