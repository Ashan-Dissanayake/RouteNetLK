# RouteNetLK

## Enterprise Public Transport Operations & Fleet Management System

> **RouteNetLK** is a full-stack, distributed enterprise platform engineered to digitize, streamline, and optimize depot-level public transport operations for large-scale transit networks (e.g., Sri Lanka Transport Board - SLTB). 

The platform models complex real-world operational workflows spanning fleet management, crew rostering, timetable scheduling, vehicle dispatching, incident recovery, spare part inventory, preventive maintenance, fare reconciliation, and analytical reporting.

Rather than functioning as a standard CRUD application, RouteNetLK models operational workflows as interconnected stateful domains and enforces strict business invariants, constraint satisfaction optimization, multi-tenant branch data isolation, and robust end-to-end security.

---

## 📑 Table of Contents

- [Core Problem & Operational Domain](#-core-problem--operational-domain)
- [System Architecture](#-system-architecture)
- [Repository Structure & Subsystems](#-repository-structure--subsystems)
- [Functional Domains & Workflows](#-functional-domains--workflows)
- [Core Engineering Highlights & Patterns](#-core-engineering-highlights--patterns)
- [Security Architecture](#-security-architecture)
- [Testing Strategy](#-testing-strategy)
- [Containerization & Cloud Deployment](#-containerization--cloud-deployment)
- [CI/CD Automation Pipeline](#-cicd-automation-pipeline)
- [Technology Stack Matrix](#-technology-stack-matrix)
- [Local Quickstart & Orchestration](#-local-quickstart--orchestration)
- [Academic Context & Author](#-academic-context--author)

---

## 🎯 Core Problem & Operational Domain

Public transport depot operations require orchestrating interdependent human, mechanical, regulatory, and financial resources. An operational event in one domain immediately impacts multiple downstream systems:

```text
[ Route & Permit Setup ]
          │
          ▼
[ Timetable Scheduling ] ───► [ Constraint-Based Crew Rostering (Timefold) ]
          │                                         │
          ▼                                         ▼
[ Vehicle Allocation ] ◄────────────────── [ Crew Assignment ]
          │
          ▼
[ Multi-Step Validation Pipeline (Strategy Pattern) ]
          │
          ▼
[ Trip Dispatch & Execution ] ───► [ Real-Time Incident / Breakdown Recovery ]
          │                                         │
          ├─────────────────────────────────────────┼──────────────────────────┐
          ▼                                         ▼                          ▼
[ Fare Collection & ETM ]            [ Garage Maintenance & GRN ]     [ Operational Analytics ]
```

### Key Operational Challenges Solved:
1. **Resource Combinatorics**: Automating crew shift scheduling and daily bus dispatch under complex operational constraints (medical clearance, license categories, route familiarity, rest periods).
2. **Breakdown & Incident Recovery**: Seamlessly managing route accidents or mechanical failures with rapid emergency replacement vehicle allocation.
3. **Inventory & Maintenance Integrity**: Linking spare part requisitions, Goods Received Notes (GRN), and technician job cards directly to vehicle service histories.
4. **Revenue Transparency**: Reconciling Electronic Ticket Machine (ETM) digital revenue logs and physical cash collections per trip.

---

## 🏗️ System Architecture

RouteNetLK is structured as a decoupled, multi-tier distributed application:

```text
                                  ┌─────────────────────────────┐
                                  │      Client Web Browser     │
                                  └──────────────┬──────────────┘
                                                 │
                                                 │ HTTPS / Port 80
                                                 ▼
┌─────────────────────────────────────────────────────────────────────────────────────────────┐
│ AWS EC2 (Ubuntu Linux)                                                                       │
│                                                                                             │
│  ┌───────────────────────────────────────────────────────────────────────────────────────┐  │
│  │ Docker Bridge Network (routenet-network)                                              │  │
│  │                                                                                       │  │
│  │   ┌─────────────────────────────┐                                                     │  │
│  │   │  Frontend Container         │                                                     │  │
│  │   │  Angular 19 + Nginx Proxy   │                                                     │  │
│  │   └──────────────┬──────────────┘                                                     │  │
│  │                  │                                                                    │  │
│  │                  │ ProxyPass (/api/*) [Internal HTTP]                                 │  │
│  │                  ▼                                                                    │  │
│  │   ┌─────────────────────────────┐       ┌──────────────────────────────────────────┐  │  │
│  │   │  Backend REST API           │◄─────►│ Timefold Solver Engine                   │  │  │
│  │   │  Spring Boot 3 (Java 17)    │       │ (NP-Hard Roster & Dispatch Optimization) │  │  │
│  │   └──────────────┬──────────────┘       └──────────────────────────────────────────┘  │  │
│  │                  │                                                                    │  │
│  │                  │ JDBC / JPA / Hibernate [Port 3306 - Internal Only]                 │  │
│  │                  ▼                                                                    │  │
│  │   ┌─────────────────────────────┐                                                     │  │
│  │   │  Relational Database        │                                                     │  │
│  │   │  MySQL 8.0 (InnoDB)         │                                                     │  │
│  │   └──────────────┬──────────────┘                                                     │  │
│  └──────────────────┼────────────────────────────────────────────────────────────────────┘  │
│                     │                                                                       │
│                     ▼ Host Mounted Volume                                                   │
│      [ Persistent MySQL Storage (mysql-data) ]                                              │
└─────────────────────────────────────────────────────────────────────────────────────────────┘
```

---

## 📦 Repository Structure & Subsystems

RouteNetLK is organized into modular repositories, each with dedicated architectural and technical documentation:

| Subsystem / Repository | Primary Stack | Core Responsibility |
| :--- | :--- | :--- |
| [**RouteNetLK Client Application**](https://github.com/Ashan-Dissanayake/RouteNetLKClientApplication) | Angular 19, TypeScript, Angular Material, Signals, Chart.js | 18 feature modules, reactive state facades, dynamic metadata form builder, role/permission guards, SSE live toasts, PDF/Excel document export. |
| [**RouteNetLK Server Application**](https://github.com/Ashan-Dissanayake/RouteNetLKServerApplication) | Spring Boot 3, Java 17, Spring Data JPA, Spring Security, Timefold | RESTful APIs, domain validation pipelines (Strategy), state machines (State), Timefold optimization, AOP branch scoping, soft delete, SSE, Thymeleaf mail. |
| **Root Infrastructure** | Docker, Docker Compose, Terraform, GitHub Actions | Multi-container orchestration, AWS VPC/EC2 provisioning (IaC), environment configuration, automated CI/CD deployment pipelines. |

---

## 🧩 Functional Domains & Workflows

The platform encompasses **18 interconnected business modules**:

```text
RouteNetLK Functional Matrix
├── Operations & Fleet
│   ├── Fleet Management       ── Vehicle registration, condition rating, compliance, fitness certificates
│   ├── Route & Permits        ── Route definitions, authorized stops, route permit quotas, transfers
│   ├── Trip Scheduling        ── Timetable master schedules, operational calendars, frequency rules
│   └── Trip Execution         ── Daily dispatching, conductor/driver sign-in, live status tracking
│
├── Crew & Workforce
│   ├── Employee Management    ── Personnel records, designations, departments, NIC/demographic validation
│   ├── Crew Registry          ── Heavy-vehicle driving licenses, conductor badges, medical clearances
│   └── Crew Rostering         ── Timefold constraint optimization for fair and compliant shift assignment
│
├── Incident & Maintenance
│   ├── Incident Reporting     ── Road accidents, en-route breakdowns, delay tracking, severity logs
│   ├── Emergency Allocation   ── Rapid replacement bus dispatching with route permit & capacity matching
│   └── Vehicle Service        ── Workshop job cards, preventive maintenance schedules, service histories
│
├── Inventory & Finance
│   ├── Spare Parts Catalog    ── Stock levels, unit costs, bin locations, automated reorder thresholds
│   ├── Part Requisitions      ── Workshop material requests, engineering approvals, stock issuance
│   ├── Goods Received (GRN)   ── Supplier intake verification, purchase order matching, stock batching
│   └── Fare Collection        ── Daily ETM ticket revenue reconciliation, cash logs, payment breakdown
│
└── Governance & Analytics
    ├── Security & Access      ── User accounts, multi-tenant branch assignment, RBAC/PBAC matrix
    ├── Live Dashboard         ── Real-time KPIs, active breakdown alerts, shift coverage counters
    └── Operational Reports    ── Multi-dimensional analytics, fleet utilization trends, financial summaries
```

---

## 🧠 Core Engineering Highlights & Patterns

### 1. Constraint-Based Optimization (Timefold Solver)
Instead of relying on naive manual scheduling, RouteNetLK leverages **Timefold Solver** to address NP-hard combinatorial planning problems:
- **Crew Shift Rostering**: Generates optimal weekly/monthly rosters respecting mandatory rest intervals, driver route familiarity, valid medical certificates, and balanced workload distribution.
- **Trip Execution Dispatch**: Matches available vehicles and qualified crews to scheduled trips, minimizing idle vehicle time and eliminating conflicting assignments.

### 2. Decoupled Business Validation (Strategy Pattern)
Validation logic is isolated into discrete, reusable strategy beans registered in a validation pipeline. This eliminates monolithic `if-else` blocks and allows business rules (e.g., license expiration, route permit compatibility, vehicle capacity bounds) to be executed consistently across modules.

### 3. Explicit Lifecycle Management (State Pattern)
Critical domain entities (Trips, Part Requests, Incident Recoveries, Maintenance Records) progress through strict deterministic state transitions managed by dedicated state transition handlers, preventing illegal lifecycle mutations.

### 4. Multi-Tenant Branch Scoping & Soft Deletion (Spring AOP + Hibernate Filters)
Depot branch data isolation and soft-delete filtering (`deleted = false`) are handled transparently at the persistence layer using Spring AOP and Hibernate `@Filter` definitions, ensuring data confidentiality across depots without repetitive query filtering.

### 5. Reactive Facade Architecture (Angular Frontend)
Components in the Angular client do not interact directly with raw HTTP services or complex RxJS streams. Instead, each feature utilizes a **Facade Service** that encapsulates reactive signals, loading states, lookup caches, and error contexts.

### 6. Dynamic Metadata-Driven UI Engine
Forms, tables, lookup resolutions, and regex validation patterns are driven dynamically through structured metadata definitions, reducing UI boilerplate while maintaining unified validation rules.

---

## 🔐 Security Architecture

RouteNetLK implements a **Stateless, Defense-in-Depth Security Model**:

```text
[ Client Request ]
       │
       ▼
[ Angular Security Layer ]
  ├── AuthGuard (Session & Token Expiry Check)
  ├── Parameterized PermissionGuard (Granular PBAC Check)
  └── AuthInterceptor (JWT Bearer Token Injection)
       │
       ▼ [ HTTPS / REST API ]
[ Spring Security Filter Chain ]
  ├── RateLimitingFilter (Brute-Force Attack Prevention)
  ├── JwtAuthenticationFilter (Token Parsing, Signature & Expiry Validation)
  └── CustomUserPrincipal Loading (Branch Context & Granted Authorities)
       │
       ▼
[ Controller & Service Layer Authorization ]
  └── @PreAuthorize("hasAuthority('...')") Method-Level Privilege Verification
       │
       ▼
[ Hibernate AOP Filter ]
  └── Transparent Multi-Tenant Branch Data Scoping
```

- **Authentication**: Stateless JSON Web Tokens (JWT) with HMAC-SHA256 signatures.
- **Authorization**: Dual-layer **Role-Based (RBAC)** and fine-grained **Privilege-Based Access Control (PBAC)** across UI routes, buttons, and API endpoints.
- **Protection**: BCrypt password hashing (cost factor 12) and automated account/IP lockout after consecutive failed authentication attempts.


## 🧪 Testing Strategy

RouteNetLK employs a comprehensive multi-tier testing strategy to ensure backend software correctness, transactional integrity, and operational reliability:

| Testing Level | Frameworks & Tools | Scope & Focus |
| --- | --- | --- |
| **Unit Testing** | JUnit 5 + Mockito | Isolated business logic, strategy pattern implementations, and state transitions |
| **Integration Testing** | Spring Boot Test + Testcontainers *(MySQL 8 Docker)* | Transactional integrity, AOP branch filters, Flyway schema migrations, and JPQL queries |
| **Security Testing** | Spring Security Test | Authentication contexts, filter chain execution, and method-level authorization rules |
| **End-to-End & API Verification** | Postman API Test Suites | Automated workflow collections verifying end-to-end HTTP APIs and state persistence |
---
## 🐳 Containerization & Cloud Deployment

The entire platform is containerized using multi-stage Docker builds and deployed to **AWS EC2** using **Terraform (Infrastructure as Code)**.

### Container Architecture
- **Frontend Container**: Multi-stage build (Node 20 build stage $\rightarrow$ Alpine Nginx 1.25 runtime) serving static assets with gzip compression and reverse-proxying `/api/*` traffic to the backend container.
- **Backend Container**: Multi-stage build (Maven $\rightarrow$ Eclipse Temurin 17 JRE slim image) with non-root execution and JVM container-aware memory limits (`-XX:MaxRAMPercentage=75.0`).
- **Database Container**: Official MySQL 8.0 image with persistent volume mapping and health checks.
- **Docker Network**: Private bridge network (`routenet-network`) where MySQL is accessible only to the backend.

### Infrastructure as Code (Terraform)
All cloud resources are provisioned declaratively via Terraform:
- **Custom VPC & Subnet**: Dedicated VPC with Internet Gateway and route table.
- **Security Groups**: Granular ingress rules (Port 80 HTTP, Port 22 SSH restricted to admin IP).
- **EC2 Compute**: Ubuntu Server instance with automated Docker runtime provisioning.

---

## 🔄 CI/CD Automation Pipeline

Independent **GitHub Actions** workflows automate testing, image building, and production deployment on every push:

```text
[ Git Push to main ]
        │
        ├── Frontend Repository ──► Run Linters ──► Docker Buildx ──► Push to Docker Hub
        └── Backend Repository  ──► Run Tests   ──► Docker Buildx ──► Push to Docker Hub
                                                                            │
                                                                            ▼
                                                              [ SSH to AWS EC2 Host ]
                                                                            │
                                                                            ├── docker compose pull <service>
                                                                            ├── docker compose up -d --no-deps <service>
                                                                            └── docker image prune -f
                                                                            │
                                                                            ▼
                                                              [ Zero-Downtime Service Update ]
```

---

## 📊 Technology Stack Matrix

| Dimension | Technology | Description / Usage |
| :--- | :--- | :--- |
| **Frontend Framework** | **Angular 19** | Standalone components, Signals, Reactive Forms, Lazy-loaded routes |
| **UI Component Library**| **Angular Material** | Modern, accessible UI controls with custom theme tokens |
| **Client-Side Export** | **jsPDF / SheetJS** | Client-side branded PDF reports (AutoTable) and Excel exports |
| **Data Visualization** | **Chart.js** | Interactive operational and financial analytics charts |
| **Backend Framework**  | **Spring Boot 3.x** | Java 17 enterprise framework, REST controllers, AOP |
| **Optimization Engine**| **Timefold Solver** | Constraint satisfaction solver for NP-hard scheduling |
| **Object Relational**  | **Spring Data JPA / Hibernate** | Relational mapping, custom projections, AOP branch filters |
| **Database**           | **MySQL 8.0** | Relational storage, ACID transactions, foreign key constraints |
| **Security**           | **Spring Security + JWT** | Stateless JWT authentication, RBAC, and granular PBAC |
| **Real-Time Events**   | **Server-Sent Events (SSE)** | Unidirectional push notification streams from backend to client |
| **Email Delivery**     | **JavaMail + Thymeleaf** | Automated HTML templated notifications |
| **Unit Testing**       | **JUnit 5 / Mockito** | Comprehensive backend unit testing |
| **Integration Testing**| **Testcontainers** | Isolated MySQL 8 Docker containers during build testing |
| **Containerization**   | **Docker / Docker Compose** | Multi-stage container builds and micro-service orchestration |
| **Reverse Proxy**      | **Nginx** | Reverse proxy, static asset web server, SSL termination ready |
| **Cloud Hosting**      | **AWS EC2 (Ubuntu)** | Cloud compute infrastructure |
| **Infrastructure as Code**| **Terraform** | Declarative AWS VPC, Security Group, and EC2 provisioning |
| **CI/CD**              | **GitHub Actions** | Automated build, test, Docker Hub publish, and EC2 CD pipeline |

---

## ⚡ Local Quickstart & Orchestration

### Prerequisites
- [Docker](https://www.docker.com/) & [Docker Compose](https://docs.docker.com/compose/)
- [Java 17 JDK](https://adoptium.net/) *(for local backend development)*
- [Node.js 20+ & npm](https://nodejs.org/) *(for local frontend development)*

### Running with Docker Compose (Full Stack)

1. **Clone the project:**
   ```bash
   git clone https://github.com/Ashan-Dissanayake/RouteNetLK.git
   cd RouteNetLK
   ```

2. **Configure environment variables:**
   ```bash
   cp .env.example .env
   # Edit .env to set your database passwords and JWT secrets
   ```

3. **Start all services:**
   ```bash
   docker compose up -d --build
   ```

4. **Access the application:**
   - **Frontend Web UI**: `http://localhost:80`
   - **Backend REST API**: `http://localhost:8080/api`
   - **API Documentation (Swagger UI)**: `http://localhost:8080/swagger-ui.html`

---

## 🎓 Academic Context & Author

**RouteNetLK** was developed as the final-year Capstone Software Engineering Project for the **Bachelor of Information Technology (BIT)** at the **University of Colombo School of Computing (UCSC)**.

The project demonstrates production-grade full-stack software engineering principles, complex domain modeling, constraint satisfaction algorithms, resilient security practices, and modern DevOps/cloud deployment workflows.

### Developed by:
**Ashan Dissanayake**  
*Full-Stack Software Engineer*

- **GitHub**: [@Ashan-Dissanayake](https://github.com/Ashan-Dissanayake)
- **LinkedIn**: [Ashan Dissanayake](https://www.linkedin.com/in/ashan-pdissanayake)
- **Project Repositories**:
  - [RouteNetLK Client Application (Angular 19)](https://github.com/Ashan-Dissanayake/RouteNetLKClientApplication)
  - [RouteNetLK Server Application (Spring Boot 3)](https://github.com/Ashan-Dissanayake/RouteNetLKServerApplication)
