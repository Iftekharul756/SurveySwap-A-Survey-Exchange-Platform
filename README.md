# SurveySwap – A Survey Exchange Platform

<p align="center">
  <strong>A student-focused survey exchange platform built with PHP and MySQL</strong>
</p>

<p align="center">
  Create surveys • Complete surveys • Earn points • Exchange responses
</p>

<p align="center">
  <img src="https://img.shields.io/badge/PHP-8%2B-777BB4?style=for-the-badge&logo=php&logoColor=white" alt="PHP">
  <img src="https://img.shields.io/badge/MySQL-Database-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">
  <img src="https://img.shields.io/badge/HTML-E34F26?style=for-the-badge&logo=html&logoColor=white" alt="HTML">
  <img src="https://img.shields.io/badge/CSS-1572B6?style=for-the-badge&logo=css&logoColor=white" alt="CSS">
  <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black" alt="JavaScript">
</p>

---

## 📌 Overview

**SurveySwap** is a full-stack web application designed to help students create, share, and complete surveys through a **points-based survey exchange system**.

Users can spend points to publish their own surveys and earn points by completing surveys created by other users. This creates a simple exchange mechanism that encourages participation and makes it easier for students to collect survey responses.

The platform includes user authentication, survey creation and management, native in-app survey responses, points management, survey tracking, search functionality, and an administrative moderation system.

---

## ✨ Features

### 👤 User Features

* User registration and login
* Session-based authentication
* Student-focused dashboard
* Browse published surveys
* Search available surveys
* View detailed survey information
* Complete surveys directly within the platform
* Earn points by completing surveys
* Create and publish surveys
* Spend points when publishing surveys
* View submitted surveys
* View completed surveys
* Track survey activity and progress

### 📝 Survey System

* Create and publish surveys
* Native in-app survey response system
* Survey completion tracking
* Survey progress tracking
* Search and browse functionality
* Survey status management
* Automatic point rewards for completed surveys
* Point deduction when publishing surveys
* Response submission and validation

### 💰 Points-Based Exchange

SurveySwap uses a points-based model to encourage participation:

```text
Complete Other Users' Surveys
             │
             ▼
        Earn Points
             │
             ▼
     Create Your Survey
             │
             ▼
       Spend Points
             │
             ▼
    Receive Responses
```

This creates a simple **give-and-take ecosystem** where users contribute survey responses in order to collect responses for their own research.

### 🛡️ Admin Features

* Dedicated administrator dashboard
* Platform activity overview
* Survey moderation
* Review pending surveys
* Approve submitted surveys
* Reject submitted surveys
* Control the survey publishing workflow

---

## 🏗️ Project Structure

```text
SurveySwap/
│
├── actions/
│   ├── approve_survey_action.php
│   ├── complete_survey_action.php
│   ├── login_action.php
│   ├── register_action.php
│   ├── reject_survey_action.php
│   ├── submit_native_response_action.php
│   └── submit_survey_action.php
│
├── admin/
│   ├── dashboard.php
│   └── moderation.php
│
├── assets/
│   ├── css/
│   │   └── style.css
│   └── js/
│       └── app.js
│
├── config/
│   ├── app.php
│   ├── db.php
│   └── env.php
│
├── database/
│   ├── migrations/
│   ├── schema.sql
│   └── seed.sql
│
├── includes/
│   ├── auth.php
│   ├── bootstrap.php
│   ├── flash.php
│   ├── functions.php
│   ├── points.php
│   └── validation.php
│
├── templates/
│   ├── footer.php
│   └── header.php
│
├── index.php
├── login.php
├── logout.php
├── register.php
├── dashboard.php
├── surveys.php
├── survey-details.php
├── submit-survey.php
├── my-surveys.php
├── completed-surveys.php
├── faq.php
│
├── setup.sql
├── migrate.php
├── run-migration.php
├── run_migration.py
├── check-surveys.php
├── cleanup-surveys.php
└── create_user.php
```

---

## 🛠️ Technologies Used

| Technology       | Purpose                                                 |
| ---------------- | ------------------------------------------------------- |
| **PHP**       | Server-side application logic and backend functionality |
| **MySQL**        | Database management and data storage                    |
| **HTML**        | Page structure and markup                               |
| **CSS**         | Custom styling, layout, and responsive interface        |
| **JavaScript**   | Client-side interaction and dynamic functionality       |
| **Apache**       | Local web server and PHP runtime                        |
| **Git & GitHub** | Version control and project management                  |

> **UI:** SurveySwap uses custom HTML, CSS, and JavaScript.

---

## 🔄 Application Workflow

```text
                  ┌───────────────────┐
                  │      Register     │
                  └─────────┬─────────┘
                            │
                            ▼
                  ┌───────────────────┐
                  │       Login       │
                  └─────────┬─────────┘
                            │
                            ▼
                  ┌───────────────────┐
                  │     Dashboard     │
                  └─────────┬─────────┘
                            │
               ┌────────────┴────────────┐
               │                         │
               ▼                         ▼
       ┌───────────────┐        ┌────────────────┐
       │ Browse Surveys│        │ Create Survey  │
       └───────┬───────┘        └───────┬────────┘
               │                        │
               ▼                        ▼
       ┌───────────────┐        ┌────────────────┐
       │Complete Survey│        │ Spend Points   │
       └───────┬───────┘        └───────┬────────┘
               │                        │
               ▼                        ▼
       ┌───────────────┐        ┌────────────────┐
       │  Earn Points  │        │ Receive        │
       │               │        │ Responses      │
       └───────────────┘        └────────────────┘
```

---

## 🚀 Getting Started

### Prerequisites

Make sure the following are installed:

* **XAMPP** or another PHP/MySQL development environment
* **PHP 8+**
* **MySQL**
* **Apache**
* A modern web browser

### 1. Clone the Repository

```bash
git clone https://github.com/Iftekharul756/SurveySwap-A-Survey-Exchange-Platform.git
```

### 2. Move the Project to the Web Server

If you are using XAMPP, place the project inside:

```text
C:\xampp\htdocs\
```

For example:

```text
C:\xampp\htdocs\SurveySwap-A-Survey-Exchange-Platform\
```

### 3. Start Apache and MySQL

Open the XAMPP Control Panel and start:

```text
Apache
MySQL
```

### 4. Configure the Database

Create a MySQL database for the application and configure the database connection according to your local environment.

The repository contains:

```text
database/schema.sql
database/seed.sql
setup.sql
```

as well as database migration utilities and migration files.

### 5. Configure Environment Settings

Configure the application's environment and database settings according to your local setup.

Make sure the database host, database name, username, and password match your local MySQL configuration.

### 6. Run the Application

Open your browser and visit:

```text
http://localhost/SurveySwap-A-Survey-Exchange-Platform/
```

The URL may vary depending on the folder name used inside your `htdocs` directory.

---

## 🗃️ Database & Migrations

SurveySwap includes a structured database setup with migration files for managing changes to the application's database.

```text
database/
├── migrations/
│   ├── 2026_04_12_reward_marketplace_upgrade.sql
│   ├── 2026_04_15_native_survey_v1.sql
│   ├── 2026_04_15_remove_target_completion.sql
│   └── 2026_04_17_add_native_surveys_seed.sql
│
├── schema.sql
└── seed.sql
```

The project also provides utilities such as:

```text
setup.sql
migrate.php
run-migration.php
run_migration.py
```

These support database initialization and migration during development.

---

## 🔐 User Roles

### Student / User

Users can:

* Register and authenticate
* Browse available surveys
* Search for surveys
* Complete surveys
* Earn points
* Create surveys
* Spend points to publish surveys
* Track submitted surveys
* Track completed surveys

### Administrator

Administrators can:

* Access the admin dashboard
* Monitor platform activity
* Review pending surveys
* Approve surveys
* Reject surveys
* Moderate the survey publishing process

---

## 📚 Key Development Concepts

This project demonstrates practical experience with:

* Full-stack web application development
* PHP backend development
* MySQL database integration
* User authentication and session management
* CRUD operations
* Form processing and validation
* Role-based access control
* Database migrations
* Survey and response management
* Points-based transaction logic
* Admin moderation
* Client-side JavaScript interaction
* Custom CSS-based interface development
* Modular PHP project organization
* Git and GitHub version control

---

## 🔮 Future Improvements

Possible future enhancements include:

* 📊 Advanced survey analytics
* 📈 Visual response dashboards
* 🔔 Real-time notifications
* 📧 Email verification and notifications
* 📱 Further mobile UI improvements
* 📤 CSV/PDF survey result export
* 👤 User profile customization
* 🌙 Dark mode
* 🔎 Advanced survey filtering
* 🏆 Leaderboards and achievement systems

---

## 👨‍💻 Author

**Md Iftekharul Alam**

B.Sc. in Computer Science & Engineering

Interested in **Artificial Intelligence, Machine Learning, Data, and Software Development**.

---

## ⭐ Support

If you find **SurveySwap** interesting, consider giving the repository a ⭐ and exploring the source code.

---
