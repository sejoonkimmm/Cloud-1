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
