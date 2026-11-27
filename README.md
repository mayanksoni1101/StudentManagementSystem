# 🎓 Student Management System

A web-based **Student Management System** developed using Java and Spring MVC. This application allows users to manage student records through a simple and user-friendly interface.

The project demonstrates Spring MVC architecture, JSP-based views, database integration using JPA, and CRUD operations.

## 🚀 Features

- **Add Student:** Register new students with their details.
- **View Students:** Retrieve and display student records from the database.
- **Update Student:** Edit existing student information.
- **Remove Student:** Delete student records.
- **Database Integration:** Store and manage student information using JPA.
- **Form Handling:** Process form submissions using Spring MVC.
- **HTTP PUT Support:** Handle update requests using `HiddenHttpMethodFilter`.
- **User-Friendly Interface:** Dark-themed UI with blue accents and responsive layouts.
- **Success Messages:** Display alerts after performing operations.

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Java | Backend programming |
| Spring MVC | Web application framework |
| JSP | Dynamic web pages |
| JSTL | JSP tag library |
| JPA | Database persistence |
| Apache Tomcat 10 | Application server |
| HTML5 | Page structure |
| CSS3 | User interface styling |
| Eclipse IDE | Development environment |

## 🏗️ Project Architecture

The application follows the Spring MVC architecture.

```text
          Client / Browser
                 |
                 v
              JSP Views
                 |
                 v
          Spring DispatcherServlet
                 |
                 v
             Controller
                 |
                 v
                DAO
                 |
                 v
             JPA / EntityManager
                 |
                 v
              Database
```

### Architecture Components

- **Model:** Represents student information.
- **View:** JSP pages display forms and student records.
- **Controller:** Handles incoming HTTP requests and application flow.
- **DAO:** Handles database operations.
- **JPA:** Manages persistence and database interaction.

## 📌 Student Information

The application manages the following student details:

| Field | Description |
|---|---|
| ID | Unique student identifier |
| Name | Student's full name |
| Email | Student's email address |
| Phone | Student's contact number |
| Course | Student's enrolled course |
| Gender | Student's gender |

## 📂 Main Project Components

```text
StudentManagementSystem/
│
├── src/
│   └── main/
│       ├── java/
│       │   └── in/
│       │       └── jsp/
│       │           ├── AppConfiguration.java
│       │           ├── WebInitializer.java
│       │           ├── Student.java
│       │           ├── StudentController.java
│       │           └── StudentDAO.java
│       │
│       └── webapp/
│           └── WEB-INF/
│               └── views/
│                   ├── index.jsp
│                   ├── register.jsp
│                   ├── update.jsp
│                   ├── remove.jsp
│                   └── record.jsp
│
└── README.md
```

*Note: This is an illustrative structure; adjust filenames and locations to match your actual Eclipse project.*

## ⚙️ Configuration

### 1. Configure Java and Eclipse

Install and configure:
- JDK
- Eclipse IDE
- Spring Framework dependencies
- Apache Tomcat 10

### 2. Configure Database

Configure your JPA persistence unit named `dev` in `persistence.xml`.

Make sure the database connection details and required JPA provider are configured correctly.

### 3. Configure Tomcat

Add Apache Tomcat 10 to your Eclipse server runtime and deploy the project.

## ▶️ How to Run

1. Clone the repository:

   ```bash
   git clone https://github.com/mayanksoni1101/StudentManagementSystem.git
   ```

2. Import the project into Eclipse IDE.

3. Configure the JDK and required libraries.

4. Configure the database and JPA persistence unit.

5. Configure Apache Tomcat 10.

6. Right-click the project and select **Run As → Run on Server**.

7. Open the application in your browser:

   ```text
   http://localhost:8080/StudentManagementSystem/student/index
   ```

## 🔄 CRUD Operations

| Operation | HTTP Method | Purpose |
|---|---|---|
| Create | POST | Register a student |
| Read | GET | Retrieve student records |
| Update | PUT | Modify student details |
| Delete | POST/DELETE | Remove a student |

## 🎯 Learning Outcomes

Through this project, I gained practical experience in:

- Understanding Spring MVC architecture.
- Implementing controller mappings.
- Working with JSP and JSTL.
- Handling HTTP methods in HTML forms.
- Using `HiddenHttpMethodFilter` for PUT requests.
- Integrating JPA with a database.
- Implementing CRUD functionality.
- Configuring Apache Tomcat.
- Building a dynamic web application.

## 🔮 Future Enhancements

- Student search functionality.
- Input validation.
- Pagination and sorting.
- Admin authentication.
- Improved error handling.
- Dashboard with student statistics.

## 👨‍💻 Author

**Mayank Soni**

GitHub: [@mayanksoni1101](https://github.com/mayanksoni1101)

Repository: [Student Management System](https://github.com/mayanksoni1101/StudentManagementSystem)

---

⭐ If you find this project interesting, feel free to explore the repository!
