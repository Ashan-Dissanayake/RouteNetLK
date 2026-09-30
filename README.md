# RouteNetLK

## Enterprise Public Transport Operations & Fleet Management System

> **RouteNetLK** is a full-stack, distributed enterprise platform designed to digitize, streamline, and optimize depot-level public transport operations for large-scale transit networks such as the Sri Lanka Transport Board (SLTB).

The platform models complex operational workflows across fleet management, crew management, timetable scheduling, vehicle dispatching, incident recovery, spare-part inventory, preventive maintenance, fare reconciliation, security, and operational analytics.

Rather than functioning as a conventional CRUD application, RouteNetLK models real-world operational processes as interconnected stateful domains with strict business rules, constraint-based optimization, role and privilege-based access control, branch-level data isolation, and end-to-end security.

 **Project Repositories**:
  - [RouteNetLK Client Application (Angular 19)](https://github.com/Ashan-Dissanayake/RouteNetLKClientApplication)
  - [RouteNetLK Server Application (Spring Boot 3)](https://github.com/Ashan-Dissanayake/RouteNetLKServerApplication)
---

## 📑 Table of Contents

* [System Overview](#-system-overview)
* [Core Problem Domain](#-core-problem-domain)
* [System Architecture](#-system-architecture)
* [Repository Architecture](#-repository-architecture)
* [Functional Domains](#-functional-domains)
* [Key Engineering Capabilities](#-key-engineering-capabilities)
* [Security Overview](#-security-overview)
* [Infrastructure & Deployment](#-infrastructure--deployment)
* [CI/CD](#-cicd)
* [Technology Stack](#-technology-stack)
* [Getting Started](#-getting-started)
* [Documentation](#-documentation)
* [Academic Context](#-academic-context)
* [Author](#-author)

---

# 🏗️ System Overview

RouteNetLK is designed as a **decoupled multi-repository application** consisting of three primary parts:

```text
                         RouteNetLK
                             │
          ┌──────────────────┼──────────────────┐
          │                  │                  │
          ▼                  ▼                  ▼
      Frontend            Backend         Infrastructure
          │                  │                  │
       Angular          Spring Boot       Terraform
          │                  │             Docker
          │                  │          GitHub Actions
          └────────── REST / SSE ──────────┘
                             │
                             ▼
                           MySQL
```

The application separates:

* **Presentation** — Angular client application
* **Business Logic & APIs** — Spring Boot server application
* **Infrastructure & Operations** — Docker, Terraform, AWS and CI/CD
* **Persistence** — MySQL database and database initialization/schema resources

This separation allows each subsystem to be independently developed, tested, versioned, and deployed.

---

# 🎯 Core Problem Domain

Public transport depot operations involve multiple interconnected resources:

* Vehicles
* Drivers
* Conductors
* Routes
* Timetables
* Trips
* Maintenance teams
* Spare parts
* Suppliers
* Revenue
* Operational incidents

A change in one operational area can directly affect other areas.

For example:

```text
Vehicle Breakdown
       │
       ├──► Trip affected
       │
       ├──► Replacement vehicle required
       │
       ├──► Qualified crew required
       │
       ├──► Route permit compatibility checked
       │
       ├──► Maintenance job created
       │
       └──► Operational / financial records updated
```

RouteNetLK models these relationships as connected business workflows rather than isolated CRUD operations.

### Key Operational Challenges

1. **Resource Scheduling**

   Crew and vehicle assignments must respect operational constraints such as qualifications, licenses, route familiarity, availability, and rest periods.

2. **Incident Recovery**

   Vehicle breakdowns and road incidents require rapid replacement vehicle allocation while maintaining operational constraints.

3. **Maintenance & Inventory Integration**

   Vehicle service operations are connected with job cards, spare-part requisitions, stock issuance, and goods-received processes.

4. **Revenue Reconciliation**

   Electronic ticket machine records and physical cash collection data are reconciled at the operational level.

5. **Multi-Branch Data Isolation**

   Operational data is scoped to the relevant depot/branch while maintaining centralized system management.

---

# 🏛️ System Architecture

RouteNetLK follows a decoupled multi-tier architecture.

<p align="center">
  <img src="https://github.com/user-attachments/assets/30fcf4c4-9c01-4943-b66f-4b41e227de26" alt="RouteNetLK System Architecture" width="100%" style="max-width: 1000px;" />
</p>

### Architectural Responsibilities

| Layer                  | Responsibility                                                               |
| ---------------------- | ---------------------------------------------------------------------------- |
| **Angular Client**     | User interface, navigation, forms, dashboards, reports and client-side state |
| **Spring Boot Server** | REST APIs, business rules, security, workflow processing and optimization    |
| **MySQL**              | Persistent relational data storage                                           |
| **Docker**             | Application containerization and local/service orchestration                 |
| **AWS**                | Cloud hosting and infrastructure                                             |
| **Terraform**          | Infrastructure provisioning as Code                                          |
| **GitHub Actions**     | Automated CI/CD pipelines                                                    |

---

# 📦 Repository Architecture

RouteNetLK is maintained using **separate repositories for application and infrastructure concerns**.

| Repository                                                                                            | Responsibility                                                                 | Primary Technology                |
| ----------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------ | --------------------------------- |
| [**RouteNetLK Client Application**](https://github.com/Ashan-Dissanayake/RouteNetLKClientApplication) | Frontend application and user interface                                        | Angular 19, TypeScript            |
| [**RouteNetLK Server Application**](https://github.com/Ashan-Dissanayake/RouteNetLKServerApplication) | Backend APIs and business logic                                                | Spring Boot 3, Java 17            |
| **RouteNetLK Infrastructure**                                                                         | Cloud infrastructure, database resources, containers and deployment automation | Terraform, Docker, GitHub Actions |

### Repository Relationship

```text
RouteNetLK
│
├── Client Repository
│   └── Angular Frontend
│
├── Server Repository
│   └── Spring Boot Backend
│
└── Infrastructure Repository
    ├── Terraform
    ├── Docker / Compose
    ├── Database Schema
    ├── SQL Scripts
    └── CI/CD Configuration
```

Each repository contains its own detailed technical documentation.

### Detailed Documentation

* **Client Application** — frontend architecture, modules, UI components, state management, API integration and frontend development.
* **Server Application** — backend architecture, domain logic, APIs, persistence, security, testing and backend development.
* **Infrastructure** — AWS architecture, Terraform, Docker, database setup, environment configuration and deployment automation.

---

# 🧩 Functional Domains

RouteNetLK contains **18 interconnected business modules** grouped into the following operational areas.

```text
RouteNetLK Functional Domains
│
├── Operations & Fleet
│   ├── Fleet Management
│   ├── Route & Permits
│   ├── Trip Scheduling
│   └── Trip Execution
│
├── Crew & Workforce
│   ├── Employee Management
│   ├── Crew Registry
│   └── Crew Rostering
│
├── Incident & Maintenance
│   ├── Incident Reporting
│   ├── Emergency Allocation
│   └── Vehicle Service
│
├── Inventory & Finance
│   ├── Spare Parts Catalog
│   ├── Part Requisitions
│   ├── Goods Received (GRN)
│   └── Fare Collection
│
└── Governance & Analytics
    ├── Security & Access
    ├── Live Dashboard
    └── Operational Reports
```

### Major Workflow Examples

**Crew Rostering**

```text
Employees
    ↓
Qualifications / Availability
    ↓
Operational Constraints
    ↓
Timefold Solver
    ↓
Optimized Roster
```

**Vehicle Breakdown**

```text
Incident
   ↓
Vehicle Unavailable
   ↓
Replacement Vehicle Search
   ↓
Route / Capacity / Permit Validation
   ↓
Replacement Dispatch
   ↓
Maintenance Workflow
```

**Maintenance & Inventory**

```text
Maintenance Job
      ↓
Part Requirement
      ↓
Part Requisition
      ↓
Approval
      ↓
Stock Issuance
      ↓
Vehicle Service
      ↓
Service History
```

**Fare Reconciliation**

```text
Trip
 ↓
ETM Revenue
 ↓
Cash Collection
 ↓
Payment Breakdown
 ↓
Reconciliation
 ↓
Financial Reporting
```

---

# 🧠 Key Engineering Capabilities

RouteNetLK focuses on applying practical software engineering principles to a complex operational domain.

### Constraint-Based Optimization

Timefold Solver is used for operational planning problems such as crew rostering and resource assignment while considering domain constraints including qualifications, availability, rest periods, and workload distribution.

### Domain-Oriented Business Logic

Business rules are organized around the operational domains of the system rather than treating the application as a collection of generic CRUD operations.

Examples include:

- Fleet management
- Crew management
- Trip scheduling
- Incident management
- Maintenance
- Inventory
- Fare reconciliation

### Multi-Branch Data Isolation

Operational data is scoped to the relevant branch/depot, preventing users from unintentionally accessing data belonging to another operational branch.

### Reactive Frontend Architecture

The Angular client uses facade-oriented services to separate UI components from API communication, reactive state, loading states, lookup data, and error handling.

### Metadata-Driven UI

Reusable metadata definitions are used to support dynamic forms, tables, lookup fields, and validation behavior across the client application.
---

# 🔐 Security Overview

RouteNetLK follows a **stateless, defense-in-depth security architecture**.

<p align="center">
  <img src="https://github.com/user-attachments/assets/2ee587c0-4e98-4caf-b126-bf7cb0dc91fe" alt="RouteNetLK Security Architecture" width="250px" />
</p>

### Authentication

* Stateless JWT authentication
* HMAC-SHA256 token signatures
* BCrypt password hashing
* Account/IP lockout mechanisms

### Authorization

The system combines:

* **Role-Based Access Control (RBAC)**
* **Privilege-Based Access Control (PBAC)**

Authorization is applied across relevant application and API operations.

### Data Protection

Branch-level data isolation and persistence filtering provide an additional security boundary for operational data.

> Detailed security implementation is documented in the Server Application repository.

---

# ☁️ Infrastructure & Deployment

RouteNetLK uses **Infrastructure as Code and containerized deployment**.

```text
                         AWS
                          │
                    ┌─────┴─────┐
                    │    VPC    │
                    └─────┬─────┘
                          │
                         EC2
                          │
                    Docker Engine
                          │
             ┌────────────┼────────────┐
             │            │            │
             ▼            ▼            ▼
          Frontend     Backend      Database
           Nginx      Spring Boot     MySQL
```

### Infrastructure Technologies

* AWS VPC
* AWS EC2
* Security Groups
* Internet Gateway
* Ubuntu Server
* Docker
* Docker Compose
* Terraform

Terraform is used to declaratively provision and manage cloud infrastructure.

### Containerization

The application is containerized using Docker.

The deployment architecture consists of:

* Angular/Nginx frontend container
* Spring Boot backend container
* MySQL database container
* Private Docker network

The backend communicates with the database through the internal Docker network rather than exposing the database directly to the public network.

> Detailed infrastructure configuration, Terraform modules, database scripts and deployment instructions are maintained in the Infrastructure repository.

---

# 🔄 CI/CD

RouteNetLK uses **GitHub Actions** to automate the software delivery lifecycle.

```text
Developer
    │
    ▼
Git Push
    │
    ▼
GitHub Repository
    │
    ▼
GitHub Actions
    │
    ├──► Build
    │
    ├──► Test
    │
    ├──► Build Docker Image
    │
    ├──► Publish Image
    │
    └──► Deploy
             │
             ▼
           AWS EC2
```

Separate workflows can be maintained for the frontend, backend and infrastructure depending on the deployment responsibility of each repository.

The CI/CD implementation includes automated:

* Build verification
* Automated testing
* Docker image creation
* Container image publishing
* Deployment to the cloud environment

> Detailed pipeline configuration and deployment procedures are documented in the relevant repositories.

---

# 📊 Technology Stack

| Category                    | Technology                  | Purpose                           |
| --------------------------- | --------------------------- | --------------------------------- |
| **Frontend**                | Angular 19                  | Web application                   |
| **Frontend Language**       | TypeScript                  | Client-side development           |
| **UI Framework**            | Angular Material            | UI components                     |
| **State Management**        | Angular Signals / Facades   | Reactive client state             |
| **Charts**                  | Chart.js                    | Operational analytics             |
| **Reports**                 | jsPDF / SheetJS             | PDF and Excel exports             |
| **Backend**                 | Spring Boot 3               | REST API and business logic       |
| **Backend Language**        | Java 17                     | Server-side development           |
| **Persistence**             | Spring Data JPA / Hibernate | ORM and database access           |
| **Optimization**            | Timefold Solver             | Constraint-based planning         |
| **Security**                | Spring Security / JWT       | Authentication and authorization  |
| **Database**                | MySQL 8                     | Relational persistence            |
| **Real-Time Communication** | Server-Sent Events          | Server-to-client live updates     |
| **Email**                   | JavaMail / Thymeleaf        | Notification delivery             |
| **Testing**                 | JUnit 5 / Mockito           | Unit testing                      |
| **Integration Testing**     | Testcontainers              | Database integration testing      |
| **Containerization**        | Docker / Docker Compose     | Application orchestration         |
| **Reverse Proxy**           | Nginx                       | Web serving and reverse proxy     |
| **Cloud**                   | AWS EC2                     | Application hosting               |
| **IaC**                     | Terraform                   | Cloud infrastructure provisioning |
| **CI/CD**                   | GitHub Actions              | Automated delivery                |

---

# 🚀 Getting Started

RouteNetLK is composed of multiple repositories. Clone the repositories required for the development task rather than treating the root repository as a single monolithic application repository.

### 1. Clone the repositories

```bash
git clone https://github.com/Ashan-Dissanayake/RouteNetLKClientApplication.git

git clone https://github.com/Ashan-Dissanayake/RouteNetLKServerApplication.git

```

### 2. Start the Infrastructure / Local Environment

Follow the instructions in the Infrastructure repository for:

* Environment variables
* Database initialization
* Docker Compose
* Local infrastructure
* AWS configuration

### 3. Start the Backend

Follow the Server Application repository README for:

* Java 17 setup
* Dependency installation
* Environment configuration
* Database configuration
* Application startup
* API documentation

### 4. Start the Frontend

Follow the Client Application repository README for:

* Node.js setup
* Dependency installation
* Environment configuration
* Development server
* API configuration

---

# 📚 Documentation

Detailed documentation is intentionally distributed according to repository responsibility.

### Frontend

[**RouteNetLK Client Application**](https://github.com/Ashan-Dissanayake/RouteNetLKClientApplication)

Contains:

* Frontend architecture
* Angular modules
* Component architecture
* Facade pattern
* Signals
* Forms
* UI components
* API integration
* Frontend testing
* Development setup

### Backend

[**RouteNetLK Server Application**](https://github.com/Ashan-Dissanayake/RouteNetLKServerApplication)

Contains:

* Backend architecture
* Domain model
* REST APIs
* Business rules
* Validation strategies
* State transitions
* Security
* Persistence
* Timefold optimization
* Testing
* Backend development setup

### Infrastructure

**RouteNetLK Infrastructure**

Contains:

* AWS architecture
* Terraform
* Docker
* Docker Compose
* Database schema
* SQL scripts
* Environment configuration
* Deployment
* CI/CD infrastructure

---

# 🎓 Academic Context

RouteNetLK was developed as a final-year **Capstone Software Engineering Project** for the **Bachelor of Information Technology (BIT)** at the **University of Colombo School of Computing (UCSC)**.

The project focuses on applying software engineering principles to a complex real-world operational domain, including:

* Domain-driven system modeling
* Enterprise application architecture
* Constraint-based optimization
* Secure API design
* Multi-branch data isolation
* Automated testing
* Containerization
* Infrastructure as Code
* Cloud deployment
* CI/CD automation

---

# 👨‍💻 Author

**Ashan Dissanayake**

*Full-Stack Software Engineer*

* **GitHub:** [@Ashan-Dissanayake](https://github.com/Ashan-Dissanayake)
* **LinkedIn:** [Ashan Dissanayake](https://www.linkedin.com/in/ashan-pdissanayake)

### Project Repositories

* [RouteNetLK Client Application](https://github.com/Ashan-Dissanayake/RouteNetLKClientApplication)
* [RouteNetLK Server Application](https://github.com/Ashan-Dissanayake/RouteNetLKServerApplication)

---

## 📄 License

This project was developed as an academic capstone software engineering project.

Refer to the repository-specific license information for usage and distribution details.
