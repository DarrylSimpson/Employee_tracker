USE employees_db;

INSERT INTO department (name) VALUES ('Sales');
INSERT INTO department (name) VALUES ('Engineering');
INSERT INTO department (name) VALUES ('Legal');
INSERT INTO department (name) VALUES ('Finance');

INSERT INTO role (title, salary, department_id) 
VALUES
    ('Sales Lead', 90000, 1),
    ('Salesperson', 60000, 1),
    ('Legal Team Lead', 150000, 2),
    ('Lawyer', 120000, 2),
    ('Accountant', 100000, 3),
    ('Account Manager', 180000, 3),
    ('Lead Engineer', 160000, 4),
    ('Sofware Engineer', 120000, 4);


INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Stanely', 'Hudson', 1, NULL);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Darryl', 'Filban', 2, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Andy', 'Bernard', 3, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Jim', 'Halpert', 4, 2);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Creed', 'Braton', 5, NULL);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Pam', 'Beasely', 6, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Dwight', 'Schrute', 7, 4);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Michael', 'Scott', 8, 2);



SELECT E1.first_name, E1.last_name, role.title, role.salary, department.name, E2.first_name AS manager
FROM employee E1
LEFT JOIN role on E1.role_id = role.id
LEFT JOIN department on role.department_id = department.id
LEFT JOIN employee E2 on E2.id = e1.manager_id;