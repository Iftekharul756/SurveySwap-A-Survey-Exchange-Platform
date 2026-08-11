# SurveySwap – A Survey Exchange Platform

<p align="center">
  <strong>A student-focused survey exchange platform built with PHP and MySQL</strong>
</p>

<p align="center">
  Create surveys • Complete surveys • Earn points • Exchange knowledge
</p>

<p align="center">
  <img src="https://img.shields.io/badge/PHP-8%2B-777BB4?style=for-the-badge&logo=php&logoColor=white" alt="PHP">
  <img src="https://img.shields.io/badge/MySQL-Database-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">
  <img src="https://img.shields.io/badge/Bootstrap-UI-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white" alt="Bootstrap">
  <img src="https://img.shields.io/badge/JavaScript-ES6%2B-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black" alt="JavaScript">
</p>

---

## 📌 Overview

**SurveySwap** is a full-stack web application designed to make survey participation easier within a student community.

The platform uses a **points-based survey exchange system**. Users can create and publish surveys by spending points, while completing surveys allows them to earn points in return. This creates a simple exchange mechanism that encourages users to participate in each other's surveys.

The project also includes **user authentication, survey management, native in-app responses, survey tracking, search functionality, and an admin moderation system**.

---

## ✨ Features

### 👤 User Features

* User registration and login
* Session-based authentication
* Student-friendly dashboard
* Browse available surveys
* Search and discover surveys
* View detailed survey information
* Complete published surveys
* Earn points by completing surveys
* Create and publish surveys
* Spend points when publishing surveys
* Track submitted surveys
* Track completed surveys
* View survey progress and activity

### 📝 Survey Management

* Create and publish surveys
* Native in-app survey response system
* Survey completion tracking
* Automatic point transactions
* Survey status management
* Survey search functionality
* Survey progress tracking

### 🛡️ Admin Features

* Dedicated admin dashboard
* Platform activity overview
* Survey moderation
* Review pending surveys
* Approve surveys
* Reject surveys
* Manage survey publishing workflow

---

## 🏗️ Application Structure

The application follows a modular PHP structure separating pages, actions, administration, database operations, and supporting resources.

```text
SurveySwap/
│
├── actions/
│   ├── login_action.php
│   ├── register_action.php
│   ├── submit_survey_action.php
│   ├── complete_survey_action.php
│   └── ...
│
├── admin/
│   ├── dashboard.php
│   └── moderation.php
│
├── assets/
│   ├── css/
│   ├── js/
│   └── images/
│
├── database/
│   └── migrations/
│
├── includes/
│
├── index.php
├── login.php
├── register.php
├── dashboard.php
├── surveys.php
├── survey-details.php
├── submit-survey.php
├── my-surveys.php
├── completed-surveys.php
│
├── setup.sql
├── migrate.php
├── run-migration.php
└── README.md
```

> The exact directory structure may contain additional supporting files and modules.

---

## 🛠️ Technologies Used

| Technology       | Purpose                                |
| ---------------- | -------------------------------------- |
| **PHP**          | Server-side application logic          |
| **MySQL**        | Database management                    |
| **HTML5**        | Page structure                         |
| **CSS3**         | Styling and layout                     |
| **JavaScript**   | Client-side interactions               |
| **Bootstrap**    | Responsive UI components               |
| **Apache**       | Local web server                       |
| **Git & GitHub** | Version control and project management |

---

## 🔄 How SurveySwap Works

```text
            ┌─────────────────────┐
            │      Register       │
            └──────────┬──────────┘
                       │
                       ▼
            ┌─────────────────────┐
            │   Browse Surveys    │
            └──────────┬──────────┘
                       │
             ┌─────────┴─────────┐
             ▼                   ▼
    ┌────────────────┐   ┌────────────────┐
    │ Complete       │   │ Create Survey  │
    │ a Survey       │   │                │
    └───────┬────────┘   └───────┬────────┘
            │                    │
            ▼                    ▼
       Earn Points          Spend Points
            │                    │
            └─────────┬──────────┘
                      ▼
             ┌──────────────────┐
             │  Survey Exchange │
             │     System       │
             └──────────────────┘
```

The points mechanism creates a simple **give-and-take system** where users contribute responses to gain the ability to collect responses for their own surveys.

---

## 🚀 Getting Started

### Prerequisites

Before running the project, make sure you have:

* **XAMPP** or another PHP/MySQL development environment
* **PHP 8.0+**
* **MySQL**
* **Apache**
* A modern web browser

### Installation

#### 1. Clone the repository

```bash
git clone https://github.com/Iftekharul756/SurveySwap-A-Survey-Exchange-Platform.git
```

#### 2. Move the project to your web server

For XAMPP, place the project inside:

```text
C:\xampp\htdocs\
```

For example:

```text
C:\xampp\htdocs\SurveySwap-A-Survey-Exchange-Platform\
```

#### 3. Start Apache and MySQL

Open the XAMPP Control Panel and start:

```text
Apache
MySQL
```

#### 4. Create the database

Create a MySQL database using **phpMyAdmin** and import the required SQL/setup files from the project.

The repository also contains migration and setup utilities for configuring the database.

#### 5. Configure the application

Update the database configuration according to your local MySQL environment.

Make sure the database name, username, password, and host match your local setup.

#### 6. Open the application

Visit:

```text
http://localhost/SurveySwap-A-Survey-Exchange-Platform/
```

The exact URL may vary depending on the folder name you use inside `htdocs`.

---

## 🗃️ Database & Migration

SurveySwap includes database setup and migration utilities to support the application's evolving database structure.

Relevant files include:

```text
setup.sql
migrate.php
run-migration.php
run_migration.py
database/migrations/
```

These files help initialize and update the database required by the application.

> **Important:** Configure your local database environment before running migration or setup scripts.

---

## 🔐 User Roles

### Student / User

Users can:

* Register and log in
* Browse available surveys
* Complete surveys
* Earn points
* Create surveys
* Spend points to publish surveys
* Track survey activity

### Administrator

Administrators can:

* Access the admin dashboard
* Monitor survey activity
* Review submitted surveys
* Approve surveys
* Reject surveys
* Moderate the platform

---

## 📚 What This Project Demonstrates

This project provided practical experience with:

* Full-stack web application development
* PHP backend development
* MySQL database integration
* User authentication and sessions
* CRUD-based application workflows
* Role-based access control
* Database migrations
* Survey and response management
* Point-based transaction logic
* Admin moderation
* Client-side and server-side interaction
* Organizing a multi-page web application
* Git and GitHub version control

---

## 🔮 Future Improvements

Possible future enhancements include:

* 📊 Advanced survey analytics
* 📈 Visual response dashboards
* 🔔 Real-time notifications
* 📧 Email verification and notifications
* 📱 Improved mobile experience
* 📤 CSV/PDF survey result export
* 👤 User profile customization
* 🌙 Dark mode
* 🔎 More advanced survey filtering
* 🏆 Leaderboards and achievement systems

---

## 👨‍💻 Author

**Md Iftekharul Alam**

B.Sc. in Computer Science & Engineering

Interested in **AI, Machine Learning, Data & Software Development**.

---

## ⭐ Support

If you find **SurveySwap** interesting, consider giving the repository a ⭐ and exploring the source code.

---
