DROP DATABASE IF EXISTS employee_tracker;

-- Creates a new DB
CREATE DATABASE employee_tracker;

-- Uses new DB
USE employee_tracker;

-- Creates department table
CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30),
    PRIMARY KEY (id)
);

-- Creates roles table
CREATE TABLE roles (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30),
    salary DECIMAL(10,2),
    department_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (department_id) REFERENCES department (id) ON DELETE CASCADE
);

-- Creates employee table
CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_name VARCHAR(30) DEFAULT 'NONE',
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id) ON DELETE CASCADE
);

-- Department Names
INSERT INTO department (name)
VALUES ("Engineering");
INSERT INTO department (name)
VALUES ("Sales");
INSERT INTO department (name)
VALUES ("Finance");
INSERT INTO department (name)
VALUES ("Legal");
INSERT INTO department (name)
VALUES ("Marketing");
INSERT INTO department (name)
VALUES ("Support");
INSERT INTO department (name)
VALUES ("Clerical");
SELECT * FROM department

-- Engineering Roles
INSERT INTO roles (title, salary, department_id)
VALUES ("Engineering Intern", 35000, 1);
INSERT INTO roles (title, salary, department_id)
VALUES ("Jr. Software Engineer", 65000, 1);
INSERT INTO roles (title, salary, department_id)
VALUES ("Sr. Software Engineer", 135000, 1);

-- Sales Roles
INSERT INTO roles (title, salary, department_id)
VALUES ("Sales Associate", 28000, 2);
INSERT INTO roles (title, salary, department_id)
VALUES ("Sales Lead", 29500, 2);

-- Finance Roles
INSERT INTO roles (title, salary, department_id)
VALUES ("Accountant", 45000, 3);
INSERT INTO roles (title, salary, department_id)
VALUES ("Lead Accountant", 55000, 3);

-- Legal Roles
INSERT INTO roles (title, salary, department_id)
VALUES ("Lawyer", 85000, 4);
INSERT INTO roles (title, salary, department_id)
VALUES ("Legal Team Lead", 145000, 4);

-- Marketing Roles
INSERT INTO roles (title, salary, department_id)
VALUES ("Marketing Associate", 37000, 5);
INSERT INTO roles (title, salary, department_id)
VALUES ("Marketing Team Lead", 40000, 5);

-- Support Roles
INSERT INTO roles (title, salary, department_id)
VALUES ("Support Rep", 32000, 6);
INSERT INTO roles (title, salary, department_id)
VALUES ("Support Team Lead", 36000, 6);

-- Clerical Roles
INSERT INTO roles (title, salary, department_id)
VALUES ("Secretary", 32000, 7);
INSERT INTO roles (title, salary, department_id)
VALUES ("Office Manager", 32000, 7);

-- Employees
INSERT INTO employee (first_name, last_name, role_id, manager_name)
VALUES ("Viri", "Ortiz", 1, "Adrian Parra");
INSERT INTO employee (first_name, last_name, role_id, manager_name)
VALUES ("Adrian", "Parra", 3, "N/A");
INSERT INTO employee (first_name, last_name, role_id, manager_name)
VALUES ("Patricia", "Rodriguez", 5, "N/A");
INSERT INTO employee (first_name, last_name, role_id, manager_name)
VALUES ("Carlos", "Martinez", 6, "Justin Bieber");
INSERT INTO employee (first_name, last_name, role_id, manager_name)
VALUES ("Justin", "Bieber", 7, "N/A");
INSERT INTO employee (first_name, last_name, role_id, manager_name)
VALUES ("Selena", "Gomez", 9, "N/A");
INSERT INTO employee (first_name, last_name, role_id, manager_name)
VALUES ("Eva", "Mendez", 10, "Harry Potter");
INSERT INTO employee (first_name, last_name, role_id, manager_name)
VALUES ("Harry", "Potter", 11, "N/A");
INSERT INTO employee (first_name, last_name, role_id, manager_name)
VALUES ("Tanner", "Johnson", 13, "N/A");
INSERT INTO employee (first_name, last_name, role_id, manager_name)
VALUES ("Hello", "Kitty", 15, "N/A");