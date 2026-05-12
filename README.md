Cloud-Native Service Orchestration Portal
A sophisticated 3-Tier Architecture demonstration, showcasing the seamless integration of a containerized frontend, a Python-based backend API, and a persistent MySQL database. This project serves as a practical implementation of modern DevOps workflows and Infrastructure as Code (IaC) principles.

🏗️ System Architecture
The application is architected to ensure complete environment isolation and data integrity:

Frontend Layer: A responsive web interface for capturing client service requirements.

Application Layer: A Python Flask backend that handles business logic and secure database transactions.

Data Layer: A MySQL 8.0 instance managed with Docker Volumes to ensure data persistence across container lifecycles.

🛠️ Technology Stack
Programming: Python 3.9

Framework: Flask

Database: MySQL 8.0

Infrastructure: Docker & Docker Compose

Environment: Linux (Ubuntu/WSL2)
Deployment & Execution
To deploy the entire stack, execute the following command from the project root:

Bash
docker compose up -d --build
Once the orchestration is complete, the portal is accessible at:
http://localhost:9000

📂 Project Structure
Plaintext
.
├── app.py              # Application logic and DB connectivity
├── Dockerfile          # Container environment specification
├── docker-compose.yml  # Multi-service orchestration & networking
├── templates/          # UI components
│   └── index.html      # Service portal frontend
└── README.md           # Professional documentation
💡 Key DevOps Competencies Demonstrated
Container Inter-connectivity: Established a secure bridge network for isolated communication between the application and database.

Persistent Storage Management: Configured Docker Volumes to prevent data loss during container restarts or updates.

Service Dependency Handling: Implemented logic to ensure the application layer gracefully handles database initialization delays.

Infrastructure as Code: Fully defined the service environment in a single YAML configuration for 100% reproducibility.
