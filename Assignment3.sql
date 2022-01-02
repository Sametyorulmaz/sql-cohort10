/*Single-Row Subqueries*/

/****1****/

SELECT TrackId, Name, max(Milliseconds)
FROM tracks;

/****2****/
SELECT TrackId, Name, min(Milliseconds)
FROM tracks;


/****3****/
SELECT avg(Bytes)
FROM tracks

SELECT TrackId, Name, Bytes
FROM tracks
WHERE bytes > (SELECT avg(Bytes)
				FROM tracks)
order by bytes DESC;


 /*****DDL (CREATE, ALTER, DELETE) and DML (SELECT, INSERT, UPDATE, DELETE) Statements*****/
 
 

								
					/****1****/
CREATE TABLE courses( 
		CourseId INT,
		CourseName TEXT NOT NULL ,
		employee_id INT,
		CoursePrice INT,
		PRIMARY KEY(CourseId),
		FOREIGN KEY(employee_id) REFERENCES employees(EmployeeId)
		);				
					
					
/****2****/		


INSERT INTO courses(CourseId,CourseName,employee_id,CoursePrice)
			VALUES (1001,'music',1,200),
		   (1002,'hockey',2,650),
		   (1003,'baseball',3,500),
		   (1004,'golf',4,1000),
		   (1005,'swimming',5,900);
		   
/****3****/
		   
DELETE FROM courses  WHERE employee_id=5;

/****4****/
ALTER TABLE courses
	ADD	StartDate TEXT DEFAULT '11.11.2021';

/****5****/

ALTER TABLE courses
	 DROP COLUMN CoursePrice ;	
	 
/****6****/

DROP TABLE courses
					

					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
		
                    
					
					
		





















