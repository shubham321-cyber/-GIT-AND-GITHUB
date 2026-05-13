🚀 Cloud Service Intake Portal: Multi-Cloud Deployment
A 3-Tier Architecture demonstration of Cloud-Native Service Orchestration.

This project is a sophisticated demonstration of a 3-Tier Architecture, successfully deployed both locally and on a live AWS EC2 instance. It serves as a practical implementation of modern DevOps workflows, focusing on containerization, infrastructure portability, and data persistence.
<img width="1905" height="852" alt="image" src="https://github.com/user-attachments/assets/d1bd3db0-48c2-4383-af07-1c11a16423fc" />
database: <img width="923" height="306" alt="image" src="https://github.com/user-attachments/assets/a1ce2af9-cab5-4691-862f-8b51e901202a" />


🌐 The Project Concept
This portal acts as a simplified Cloud Service Marketplace. Users can select their preferred cloud provider (AWS, Azure, or Google Cloud), specify their requirements and budget, and the system securely stores this data in a managed MySQL database.

🏗️ System Architecture
The application is architected to ensure complete environment isolation and 100% reproducibility across local and cloud environments:

Frontend Layer: A responsive web interface built with HTML/Inter UI for capturing client infrastructure needs.

Application Layer: A Python Flask backend API that manages business logic and handles secure database transactions.

Data Layer: A MySQL 8.0 instance optimized with Docker Volumes to ensure data remains persistent even if containers are destroyed.

🛠️ Technology Stack
Programming: Python 3.9

Web Framework: Flask

Database: MySQL 8.0

Containerization: Docker & Docker Compose

Cloud Infrastructure: AWS EC2 (Ubuntu 24.04 LTS)

☁️ Cloud Deployment (AWS EC2)
Unlike a standard local project, this application is fully operational in a live cloud environment.

Public Access: Hosted on an AWS EC2 instance with a public-facing IP.

Networking: Configured AWS Security Groups to allow inbound traffic on Port 9000 (Web) and Port 22 (SSH).

Port Mapping: The container runs internally on Port 80, mapped to Port 9000 for secure external access.
.
├── app.py              # Backend logic & MySQL connectivity
├── Dockerfile          # Environment & dependency specifications
├── docker-compose.yml  # Multi-container orchestration (Web + DB)
├── init.sql            # Automated Database schema initialization
├── templates/          # UI Components
│   └── index.html      # Responsive Frontend
└── README.md           # Professional Documentation
Quick Start & Execution
To deploy the entire stack on any Linux-based environment (Local WSL2 or AWS EC2), execute:

Bash
# Clone the repository
git clone https://github.com/your-username/Docker--projects.git

# Navigate and deploy
cd Docker--projects
docker compose up -d --build
Local Access: http://localhost:9000

Cloud Access: http://<YOUR-EC2-PUBLIC-IP>:9000
