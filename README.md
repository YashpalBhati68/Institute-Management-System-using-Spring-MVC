# Institute Management System (Spring MVC)

A web-based Institute Management System built using **Spring MVC**, **Hibernate/JPA**, and **MySQL**. The application provides simple CRUD (Create, Read, Update, Delete) operations to manage students, courses, trainers, and course enrollments through a clean, Bootstrap-styled interface.

---

## Features

- **Student Management** — Add, edit, view, and delete student records (name, email, gender, address).
- **Course Management** — Add, edit, view, and delete courses (name, description, duration, fee).
- **Trainer Management** — Add, edit, view, and delete trainer profiles (name, mobile number, email, gender, address).
- **Enrollment Management** — Enroll a student into a course with a specific enrollment date, view all enrollments, and remove an enrollment.
- **Responsive UI** — Bootstrap 5 based interface with a dashboard-style home page, styled forms, searchable tables, and confirmation prompts on delete actions.

---

## Tech Stack

| Layer                | Technology                              |
|----------------------|-----------------------------------------|
| Language             | Java                                    |
| Web Framework        | Spring MVC 5.3.29                       |
| ORM / Persistence    | Hibernate 5.6.15 (JPA), Spring Data JPA |
| Database             | MySQL 8                                 |
| View Layer           | JSP + JSTL                              |
| Frontend Styling     | Bootstrap 5, Bootstrap Icons            |
| Build Tool           | Maven                                   |
| Server               | Apache Tomcat 9 (Servlet container)     |
| Configuration        | Java-based config (no `web.xml` for 
                         beans — uses 
                        `AbstractAnnotationConfigDispatcherServletInitializer`) |

---

## Architecture

The project follows a standard **layered MVC architecture**:

```
Controller  →  Service  →  Repository  →  Database
     ↓
   JSP View
```

- **Controller layer** — Handles HTTP requests (`StudentController`, `CourseController`, `TrainerController`, `EnrollmentController`) and maps them to views.
- **Service layer** — Contains business logic (`StudentService`, `CourseService`, `TrainerService`, `EnrollmentService`).
- **Repository layer** — Spring Data JPA repositories for database access (`StudentRepo`, `CourseRepo`, `TrainerRepo`, `EnrollmentRepo`).
- **Model layer** — JPA entity classes mapped to database tables (`Student`, `Course`, `Trainer`, `Enrollment`).
- **View layer** — JSP pages rendered via `InternalResourceViewResolver`, styled with Bootstrap.

Configuration is done entirely in Java (no XML), using:
- `WebAppInitializer` — bootstraps the Spring `DispatcherServlet`.
- `HibernateConfig` — configures the DataSource, EntityManagerFactory, and transaction manager.
- `MvcConfiguration` — enables Spring MVC, sets the JSP view resolver, and registers static resource handlers.

---

## Project Structure

```
src/main/java/com/example/springmvc/
├── config/          # Spring & Hibernate configuration classes
├── controller/       # REST/MVC controllers
├── model/            # JPA entity classes
├── repository/        # Spring Data JPA repositories
└── service/           # Business logic layer

src/main/webapp/
├── WEB-INF/jsp/       # JSP views (list & form pages, common header/footer)
├── resources/css/     # Custom stylesheet
├── resources/js/      # Client-side scripts
├── resources/images/  # Static images
└── index.jsp          # Home page
```

---

## Prerequisites

- JDK 8 or higher
- Apache Maven
- Apache Tomcat 9
- MySQL Server

---

## Setup & Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/YashpalBhati68/Institute-Management-System-using-Spring-MVC.git
   ```

2. **Create the database**
   ```sql
   CREATE DATABASE institute_managment_system;
   ```

3. **Configure the database connection**

   Update the credentials in `src/main/java/com/example/springmvc/config/HibernateConfig.java`:
   ```java
   ds.setUrl("jdbc:mysql://localhost:3306/institute_managment_system?useSSL=false&serverTimezone=UTC");
   ds.setUsername("root");
   ds.setPassword("your_password");
   ```

4. **Build the project**
   ```bash
   mvn clean install
   ```

5. **Deploy**

   Deploy the generated `.war` file to Tomcat 9, or run the project directly from your IDE (IntelliJ IDEA / Eclipse) using a configured Tomcat server.

6. **Access the application**

   Open your browser at:
   ```
   http://localhost:8080/Institute-Managment-System-Spring-mvc/
   ```

> **Note:** Hibernate is configured with `hibernate.hbm2ddl.auto=update`, so tables are created/updated automatically on startup — no manual schema scripts are required beyond creating the empty database.

---

## Modules Overview

| Module       | Endpoint               | Description                           |
|--------------|------------------------|---------------------------------------|
| Students     | `/students`            | List, add, edit, delete students      |
| Courses      | `/courses`             | List, add, edit, delete courses       |
| Trainers     | `/trainers`            | List, add, edit, delete trainers      |
| Enrollments  | `/enrollments`         | List, add, delete enrollments         |

---

## Future Improvements

- Add authentication and role-based access (Admin / Trainer / Student)
- Add pagination and server-side search for large datasets
- Add validation and error messages on forms
- Add REST API endpoints for integration with a frontend framework (React/Angular)

---

## Author

**Developed by [Yashpal Bhati](https://github.com/YashpalBhati68)**
