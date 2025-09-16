data - bu saqlanadigan, qayta ishlanadigan va uzatilinadigan barcha axborotlar. database - malumotlarni tartibli saqlash va boshkarish uchun tizim. Relational - bu malumotlar orasida boglanish degani. Database - bu malumotlar saqlanadigan joy. Bu malumotlarni saqlash va tartibga solish uchun foydalanadigan malumotlar bazasi

1)Ma’lumotlarni saqlash va boshqarish 2)Ma’lumotlarni saqlash va boshqarish 3)Transaction Management 4)Backup va Restore 5)Reporting va Analytics

create database SchoolDB create table students (StudentsId int primary key, name varchar(50), age int )

SQL Server — malumotlar bazasi tizimi, SSMS — uni boshqarish dasturi, SQL — malumotlar bilan ishlash tili.

1)DQL – malumot sorash: SELECT 2)DML – malumotni qoshish/yangilash/ochirish: INSERT, UPDATE, DELETE 3)DDL – jadval yoki struktura yaratish/ozgartirish/ochirish: CREATE, ALTER, DROP 4)DCL – ruxsat berish/olish: GRANT, REVOKE 5)TCL – transactionlarni boshqarish: COMMIT, ROLLBACK, SAVEPOINT

insert into students values (10, 'Ali', 17), (11, 'Bek', 20), (12, 'Sancho', 16)

--Step1 - download AdventureWorksDW2022.bak file from :https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2022.bak -- Step2 - save this AdventureWorksDW2022.bak file to C:\ disk -- Step3 - open SQL -- Step4 - open "Databases" folder in Object Explorer -- Step5 - select Restore Database... -- Step6 - choose Device and click ... button, click Add, choose AdventureWorksDW2022.bak file and click ok -- Step7 - back to Object Explorer, click Refresh
