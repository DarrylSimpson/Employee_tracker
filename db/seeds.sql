USE employees_db;

INSERT INTO department (name) VALUES ('Sales');
INSERT INTO department (name) VALUES ('Engineering');
INSERT INTO department (name) VALUES ('Legal');
INSERT INTO department (name) VALUES ('Finance');

INSERT INTO role (title, salary, department_id) 
VALUES
    ('Sales', 10000, 1),
    ('Engineering', 20000, 2),
    ('Legal', 30000, 3),
    ('Finance', 40000, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES
    ('Frank', 'D', 1, NULL),
    ('Frank', 'E', 2, 3),
    ('Frank', 'F', 3, 1),
    ('Frank', 'G', 4, 2);

SELECT E1.first_name, E1.last_name, role.title, role.salary, department.name, E2.first_name AS manager
FROM employee E1
LEFT JOIN role on E1.role_id = role.id
LEFT JOIN department on role.department_id = department.id
LEFT JOIN employee E2 on E2.id = e1.manager_id;