DROP TABLE workson cascade constraints;
DROP TABLE proj  cascade constraints;
DROP TABLE emp  cascade constraints;
DROP TABLE dept cascade constraints;


CREATE TABLE emp (
 eno CHAR(5) NOT NULL,
 ename VARCHAR(30),
 bdate DATE,
 title CHAR(2),			
 salary DECIMAL(9,2),
 supereno CHAR(5),
 dno CHAR(5),
 PRIMARY KEY (eno)
);



CREATE TABLE dept (
 dno CHAR(5) NOT NULL,
 dname VARCHAR(40),
 mgreno CHAR(5),
 PRIMARY KEY (dno),
 CONSTRAINT FK_dept_emp FOREIGN KEY (mgreno) REFERENCES emp (eno) ON DELETE SET NULL);

ALTER TABLE emp ADD CONSTRAINT FK_emp_dept FOREIGN KEY (dno) REFERENCES dept(dno); 
 

CREATE TABLE proj (
 pno CHAR(5) NOT NULL,
 pname VARCHAR(40),
 budget DECIMAL(9,2),
 dno  CHAR(5), 
 PRIMARY KEY (pno),
 CONSTRAINT FK_proj_dept FOREIGN KEY (dno) REFERENCES dept(dno) ON DELETE SET NULL);
 

CREATE TABLE workson (
 eno  CHAR(5) NOT NULL,
 pno  CHAR(5) NOT NULL,
 resp    VARCHAR(20),
 hours   SMALLINT,
 CONSTRAINT PK_workson PRIMARY KEY (eno,pno),
 CONSTRAINT FK_workson_emp FOREIGN KEY (eno) REFERENCES emp (eno),
 CONSTRAINT FK_workson_proj FOREIGN KEY (pno) REFERENCES proj (pno));
 

INSERT INTO dept VALUES ('D1','Management',NULL);
INSERT INTO dept VALUES ('D2','Consulting',NULL);
INSERT INTO dept VALUES ('D3','Accounting',NULL);
INSERT INTO dept VALUES ('D4','Development',NULL);

INSERT INTO proj VALUES ('P1','Instruments',150000,'D1');
INSERT INTO proj VALUES ('P2','DB Develop',135000,'D2');
INSERT INTO proj VALUES ('P3','Budget',250000,'D3');
INSERT INTO proj VALUES ('P4','Maintenance',310000,'D2');
INSERT INTO proj VALUES ('P5','CAD/CAM',500000,'D2');

INSERT INTO emp VALUES ('E1','J. Doe',TO_DATE('1975-01-05', 'yyyy-mm-dd'),'EE',30000,null,null);
INSERT INTO emp VALUES ('E2','M. Smith',TO_DATE('1966-06-04', 'yyyy-mm-dd'),'SA',50000,null,'D3');
INSERT INTO emp VALUES ('E3','A. Lee',TO_DATE('1966-07-05', 'yyyy-mm-dd'),'ME',40000,null,'D2');
INSERT INTO emp VALUES ('E4','J. Miller',TO_DATE('1950-09-01', 'yyyy-mm-dd'),'PR',20000,null,'D3');
INSERT INTO emp VALUES ('E5','B. Casey',TO_DATE('1971-12-25', 'yyyy-mm-dd'),'SA',50000,null,'D3');
INSERT INTO emp VALUES ('E6','L. Chu',TO_DATE('1965-11-30', 'yyyy-mm-dd'),'EE',30000,null,'D2');
INSERT INTO emp VALUES ('E7','R. Davis',TO_DATE('1977-09-08', 'yyyy-mm-dd'),'ME',40000,null,'D1');
INSERT INTO emp VALUES ('E8','J. Jones',TO_DATE('1972-10-11', 'yyyy-mm-dd'),'SA',50000,null,'D1');

UPDATE emp SET supereno = 'E2' WHERE eno = 'E1';
UPDATE emp SET supereno = 'E5' WHERE eno = 'E2';
UPDATE emp SET supereno = 'E7' WHERE eno = 'E3';
UPDATE emp SET supereno = 'E6' WHERE eno = 'E4';
UPDATE emp SET supereno = 'E8' WHERE eno = 'E5';
UPDATE emp SET supereno = 'E7' WHERE eno = 'E6';
UPDATE emp SET supereno = 'E8' WHERE eno = 'E7';

Update dept SET mgreno = 'E8' WHERE dno = 'D1';
Update dept SET mgreno = 'E7' WHERE dno = 'D2';
Update dept SET mgreno = 'E5' WHERE dno = 'D3';

INSERT INTO workson VALUES ('E1','P1','Manager',12);
INSERT INTO workson VALUES ('E2','P1','Analyst',24);
INSERT INTO workson VALUES ('E2','P2','Analyst',6);
INSERT INTO workson VALUES ('E3','P3','Consultant',10);
INSERT INTO workson VALUES ('E3','P4','Engineer',48);
INSERT INTO workson VALUES ('E4','P2','Programmer',18);
INSERT INTO workson VALUES ('E5','P2','Manager',24);
INSERT INTO workson VALUES ('E6','P4','Manager',48);
INSERT INTO workson VALUES ('E7','P3','Engineer',36);
