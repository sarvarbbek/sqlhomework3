create table InputTbl 
( 
col1 varchar(20),
col2 varchar(20)
)
insert into InputTbl values 
('a', 'b'),
('a', 'b'),
('b', 'a'),
('c', 'd'),
('c', 'd'),
('m', 'n'),
('n', 'm');
select * from InputTbl
select distinct col1, col2 from InputTbl
select col1,col2 from InputTbl
group by col1,col2

CREATE TABLE TestMultipleZero (
    A INT NULL,
    B INT NULL,
    C INT NULL,
    D INT NULL
);

INSERT INTO TestMultipleZero(A,B,C,D)
VALUES 
    (0,0,0,1),
    (0,0,1,0),
    (0,1,0,0),
    (1,0,0,0),
    (0,0,0,0),
    (1,1,1,0);
select * from TestMultipleZero  
where 1 in (A,B,C,D)
create table section1(id int, name varchar(20))
insert into section1 values (1, 'Been'),
       (2, 'Roma'),
       (3, 'Steven'),
       (4, 'Paulo'),
       (5, 'Genryh'),
       (6, 'Bruno'),
       (7, 'Fred'),
       (8, 'Andro')
select * from  section1
where id % 2 <>0 
select min(id) from section1
select max(id) from section1
select * from section1
where name like 'B%'

CREATE TABLE ProductCodes (
    Code VARCHAR(20)
);

INSERT INTO ProductCodes (Code) VALUES
('X-123'),
('X_456'),
('X#789'),
('X-001'),
('X%202'),
('X_ABC'),
('X#DEF'),
('X-999');
select * from  ProductCodes
where Code like '%\_%' escape '\'
