
create table employees (
id serial primary key,
employee_name varchar(50) not null
);

select * from employees;

insert into employees (employee_name)
values ('Ivanov'),
       ('Sidorov'),
       ('Petrov'),
       ('Magamedov'),
       ('Borodina'),
       ('Orlova'),
       ('Drozd'),
       ('Petrova'),
       ('Kozlov'),
       ('Naymov'),
       ('Tomilin'),
       ('Krutikov'),
       ('Bobrov'),
       ('Chalya'),
       ('Kirova'),
       ('Lanskay'),
       ('Srelzov'),
       ('Panina'),
       ('Borzov'),
       ('Pavlovetz'),
       ('Evseev'),
       ('Klemin'),
       ('Vishneva'),
       ('Morskay'),
       ('Ageeva'),
       ('Gorboenko'),
       ('Myzaleva'),
       ('Myradova'),
       ('Evseeva'),
       ('Artemyeva'),
       ('Rabalko'),
       ('Kotova'),
       ('Melnik'),
       ('Popov'),
       ('Serov'),
       ('Putin'),
       ('Medvedev'),
       ('Sobchak'),
       ('Gumilev'),
       ('Voronin'),
       ('Cherkasskay'),
       ('Romanov'),
       ('Rurik'),
       ('Bond'),
       ('Shixman'),
       ('Stalnay'),
       ('Mameva'),
       ('Zagitova'),
       ('Valieva'),
       ('Lipnizkay'),
       ('Kosmos'),
       ('Trunova'),
       ('Pokrovskay'),
       ('Rubzova'),
       ('Zobov'),
       ('Shibanov'),
       ('Shibaev'),
       ('Potapenko'),
       ('Pontilemon'),
       ('Astaxova'),
       ('Gorchakova'),
       ('Nosov'),
       ('Solovey'),
       ('Aslanov'),
       ('Vaxrusheva'),
       ('Bibikov'),
       ('Fomina'),
       ('Rakova'),
       ('Rakov'),
       ('Zvezdnay');
       
      create table salary (
      id serial primary key,
      monthly_salary int not null
      );
      
     select * from salary;
     
    insert into salary (monthly_salary)
    values ('1000'),
           ('1100'),
           ('1200'),
           ('1300'),
           ('1400'),
           ('1500'),
           ('1600'),
           ('1700'),
           ('1800'),
           ('1900'),
           ('2000'),
           ('2100'),
           ('2200'),
           ('2300'),
           ('2400'),
           ('2500');
           
          select * from employee_salary;
          
         create table employee_salary (
         id serial primary key,
         employee_id int not null unique,
         salary_id int not null
         );
        
        insert into employee_salary (employee_id,salary_id)
        values (3, 7),
               (1, 4),
               (5, 9),
               (40, 13),
               (23, 4),
               (11, 2),
               (52, 10),
               (15, 13),
               (26, 4),
               (16, 1),
               (33, 7),
               (20, 8),
               (21, 9),
               (22, 10),
               (24, 11),
               (4, 12),
               (27, 13),
               (28, 14),
               (29, 15),
               (30, 1),
               (31, 2),
               (32, 3),
               (2, 4),
               (34, 7),
               (35, 8),
               (36, 9),
               (37, 10),
               (38, 11),
               (39, 12),
               (50, 13),
               (99, 5),
               (90, 7),
               (91, 7),
               (92, 7),
               (93, 7),
               (94, 7),
               (95, 7),
               (96, 7),
               (97, 7),
               (98, 7);
        
        insert into employee_salary (employee_id,salary_id)
        values (53, 16),
               (42, 10),
               (43, 11),
               (55, 12);
        
        
         select * from employee_salary;
         
        create table roles (
         id serial primary key,
         role_name varchar(30) not null unique
         );
       
       
       insert into roles(role_name)
       values ('Junior Python developer'),
              ('Middle Python developer'),
              ('Senior Python developer'),
              ('Junior Java developer'),
              ('Middle Java developer'),
              ('Senior Java developer'),
              ('Junior JavaScript developer'),
              ('Middle JavaScript develope'),
              ('Senior JavaScript developer'),
              ('Junior Manual QA engineer'),
              ('Middle Manual QA engineer'),
              ('Senior Manual QA engineer'),
              ('Project Manager'),
              ('Designer'),
              ('HR'),
              ('CEO'),
              ('Sales manager'),
              ('Junior Automation QA engineer'),
              ('Middle Automation QA engineer'),
              ('Senior Automation QA enginee');
      
              select * from roles;
             
            
             
              
             create table roles_employee (
             id serial primary key,
             employee_id int not null unique,
             role_id int not null,
             foreign key (employee_id)
             references employees (id),
             foreign key (role_id)
             references roles (id)
             );
             
            
           insert into roles_employee (employee_id,role_id)
           values (7, 2),
                  (20, 4),
                  (3,  9),
                  (5, 13),
                  (23, 4),
                  (11, 2),
                  (10, 9),
                  (22, 13),
                  (34, 4),
                  (25 ,7),
                  (26 ,8),
                  (27 ,7),
                  (28 ,6),
                  (29 ,5),
                  (30 ,4),
                  (31 ,3),
                  (32 ,1),
                  (33 ,2),
                  (35 ,3),
                  (36 ,4),
                  (37 ,5),
                  (38 ,16),
                  (39 ,15),
                  (40 ,14),
                  (41 ,13),
                  (42 ,12),
                  (43 ,11),
                  (44 ,5),
                  (45 ,2),
                  (46 ,1),
                  (47 ,2),
                  (48 ,3),
                  (49 ,4),
                  (50 ,2),
                  (51 ,8),
                  (52 ,13),
                  (53 ,20),
                  (54 ,17),
                  (55 ,10),
                  (56 ,7);
                  
                  select * from roles_employee;
                  
                 // 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
              
                 select employee_name, monthly_salary  from salary join employee_salary on salary.id = employee_salary.salary_id 
                join employees on employee_salary.employee_id = employees.id; 
                
                // 2. Вывести всех работников у которых ЗП меньше 2000
                
                select employee_name from salary join employee_salary on salary.id = employee_salary.salary_id 
                join employees on employee_salary.employee_id = employees.id
                where monthly_salary<2000
                order by monthly_salary;
               
               // 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
               
               select employee_name, monthly_salary  from salary left join employee_salary on salary.id = employee_salary.salary_id 
               left join employees on employee_salary.employee_id = employees.id
               where employee_name is NULL;
               
            
              // 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
                 
                select employee_name, monthly_salary  from salary left join employee_salary on salary.id = employee_salary.salary_id 
               left join employees on employee_salary.employee_id = employees.id
                where monthly_salary<2000 and employee_name is NULL
               order by monthly_salary;
              
              // 5. Найти всех работников кому не начислена ЗП
              
              select employee_name, monthly_salary  from salary right join employee_salary on salary.id = employee_salary.salary_id 
               right  join employees on employee_salary.employee_id = employees.id
               where monthly_salary  is null; 
               
              
             
             // 6. Вывести всех работников с названиями их должности
             
             select employee_name, role_name  from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id;
             
             // 7. Вывести имена и должность только Java разработчиков.
             
             select employee_name, role_name  from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id
            where role_name like '%Java developer%';
           
           // 8. Вывести имена и должность только Python разработчиков.
            
           select employee_name, role_name  from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id
            where role_name like '%Python developer%';
           
           // 9. Вывести имена и должность всех QA инженеров.
           
            select employee_name, role_name  from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id
            where role_name like '%QA%';
           
           // 10. Вывести имена и должность ручных QA инженеров.
           
           select employee_name, role_name from  employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id
             where role_name like '%Manual%';
           
           // 11. Вывести имена и должность автоматизаторов QA
            
           select employee_name, role_name from  employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id
             where role_name like '%Automation%';
           
           
           // 12. Вывести имена и зарплаты Junior специалистов
           
            select employee_name,  monthly_salary from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id join employee_salary on employees.id = employee_salary.employee_id join salary on employee_salary.salary_id = salary.id
            where role_name like '%Junior%';
           
           // 13. Вывести имена и зарплаты Middle специалистов
           
           select employee_name, monthly_salary from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id join employee_salary on employees.id = employee_salary.employee_id join salary on employee_salary.salary_id = salary.id
            where role_name like '%Middle%' ;
           
           // 14. Вывести имена и зарплаты Senior специалистов
           
           select employee_name, monthly_salary from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id join employee_salary on employees.id = employee_salary.employee_id join salary on employee_salary.salary_id = salary.id
            where role_name like '%Senior%' ;
           
           // 15. Вывести зарплаты Java разработчиков
           
           select monthly_salary from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id join employee_salary on employees.id = employee_salary.employee_id join salary on employee_salary.salary_id = salary.id
            where role_name like '%Java%' 
           order by monthly_salary;
          
          // 16. Вывести зарплаты Python разработчиков
          
          select monthly_salary from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id join employee_salary on employees.id = employee_salary.employee_id join salary on employee_salary.salary_id = salary.id
            where role_name like '%Python%' 
           order by monthly_salary;
          
          // 17. Вывести имена и зарплаты Junior Python разработчиков
          
          select employee_name, monthly_salary from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id join employee_salary on employees.id = employee_salary.employee_id join salary on employee_salary.salary_id = salary.id
            where role_name like '%Junior%Python%' 
           order by monthly_salary;
          
          // 18. Вывести имена и зарплаты Middle JS разработчиков
          
           select employee_name, monthly_salary from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id join employee_salary on employees.id = employee_salary.employee_id join salary on employee_salary.salary_id = salary.id
            where role_name like '%Middle%JavaScript%' 
           order by monthly_salary; 
          
          // 19. Вывести имена и зарплаты Senior Java разработчиков
          
           select employee_name, monthly_salary from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id join employee_salary on employees.id = employee_salary.employee_id join salary on employee_salary.salary_id = salary.id
            where role_name like '%Senior%Java%' 
           order by monthly_salary;
          
          // 20. Вывести зарплаты Junior QA инженеров
           
         select monthly_salary from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id join employee_salary on employees.id = employee_salary.employee_id join salary on employee_salary.salary_id = salary.id
            where role_name like '%Junior%QA%' 
           order by monthly_salary;
           
          // 21. Вывести среднюю зарплату всех Junior специалистов
          
          select avg(monthly_salary) avg_salary from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id join employee_salary on employees.id = employee_salary.employee_id join salary on employee_salary.salary_id = salary.id
            where role_name like '%Junior%' ;
           
           // 22. Вывести сумму зарплат JS разработчиков
           
           select sum(monthly_salary) sum_salary from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id join employee_salary on employees.id = employee_salary.employee_id join salary on employee_salary.salary_id = salary.id
            where role_name like '%JavaScript%' ;
           
         // 23. Вывести минимальную ЗП QA инженеров
        
              select min(monthly_salary) min_salary from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id join employee_salary on employees.id = employee_salary.employee_id join salary on employee_salary.salary_id = salary.id
            where role_name like '%QA%' ;  
                
           //  24. Вывести максимальную ЗП QA инженеро
           
           select max(monthly_salary) max_salary from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id join employee_salary on employees.id = employee_salary.employee_id join salary on employee_salary.salary_id = salary.id
            where role_name like '%QA%' ;  
           
           //  25. Вывести количество QA инженеров
           
           select count(employee_name) from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id join employee_salary on employees.id = employee_salary.employee_id join salary on employee_salary.salary_id = salary.id
            where role_name like '%QA%' ; 
           
           // 26. Вывести количество Middle специалистов.
           
           select count(employee_name) from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id join employee_salary on employees.id = employee_salary.employee_id join salary on employee_salary.salary_id = salary.id
            where role_name like '%Middle%' ; 
           
           // 27. Вывести количество разработчиков
           
            select count(employee_name) from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id join employee_salary on employees.id = employee_salary.employee_id join salary on employee_salary.salary_id = salary.id
            where role_name like '%develop%' ; 
           
           // 28. Вывести фонд (сумму) зарплаты разработчиков.
           
           select sum(monthly_salary) sum_salary from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id join employee_salary on employees.id = employee_salary.employee_id join salary on employee_salary.salary_id = salary.id
            where role_name like '%develop%' ; 
           
           // 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
           
           select employee_name, role_name, monthly_salary from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id join employee_salary on employees.id = employee_salary.employee_id join salary on employee_salary.salary_id = salary.id
           order by monthly_salary ; 
          
          // 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
          
          select employee_name, role_name, monthly_salary from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id join employee_salary on employees.id = employee_salary.employee_id join salary on employee_salary.salary_id = salary.id
           where monthly_salary between 1700 and 2300
             order by monthly_salary ; 
          
          // 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
          
          select employee_name, role_name, monthly_salary from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
             on roles_employee.role_id = roles.id join employee_salary on employees.id = employee_salary.employee_id join salary on employee_salary.salary_id = salary.id
           where monthly_salary <2300
             order by monthly_salary ; 
          
          // 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
           
          select employee_name, role_name, monthly_salary from employees join roles_employee on employees.id = roles_employee.employee_id join roles 
          on roles_employee.role_id = roles.id join employee_salary on employees.id = employee_salary.employee_id join salary on employee_salary.salary_id = salary.id
          where monthly_salary in (1100,1500,2000)
          order by monthly_salary ;  