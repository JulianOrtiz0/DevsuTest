# API Testing with Karate DSL

Automated API testing project using Karate DSL for the Petstore API (Swagger).

## 🚀 Overview

This project implements an automated testing suite for the [Petstore API](https://petstore.swagger.io/). It covers the complete CRUD lifecycle for user management.

## 🛠️ Technologies

- **Java 17**: Core programming language.
- **Maven**: Build and dependency management.
- **Karate DSL**: Behavior-driven testing framework for API.
- **JUnit 5**: Test runner.

## 📋 Prerequisites

To run this project, you need:
- [JDK 17](https://www.oracle.com/java/technologies/downloads/#java17) or higher.
- [Maven](https://maven.apache.org/download.cgi).

## 📂 Project Structure

```text
API-Devsu/
├── src/test/java/
│   ├── petstore/
│   │   ├── user/
│   │   │   ├── user.feature      # Main test scenarios
│   │   │   └── user-data.json    # Test data
│   │   └── PetstoreTest.java     # JUnit test runner
│   └── karate-config.js          # Karate environment configuration
├── pom.xml                       # Maven configuration
└── README.md                     # Project documentation
```

## 🏃 How to Run

To execute the tests, run the following command in the project root:

```bash
mvn test
```

## 📊 Reports

After running the tests, Karate generates detailed HTML reports. You can find them in:

```text
target/karate-reports/karate-summary.html
```
