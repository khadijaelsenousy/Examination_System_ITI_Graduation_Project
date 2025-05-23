---STUDENT STORED PROCEDURES
CREATE PROCEDURE AddStudent
    @St_ID INT,
    @St_SSN NVARCHAR(20),
    @ST_FName NVARCHAR(50),
    @ST_LName NVARCHAR(50),
    @ST_Gender NVARCHAR(10),
    @ST_BOD DATE,
    @Email NVARCHAR(100),
    @MaritalStatus NVARCHAR(20),
    @Country NVARCHAR(50),
    @City NVARCHAR(50),
    @Edu_ID INT,
    @Track_ID INT,
    @Branch_ID INT,
	@St_SocialURL NVARCHAR(50),
	@Intake_ID INT
AS
BEGIN
    INSERT INTO Student VALUES (@St_ID, @St_SSN, @ST_FName, @ST_LName, @ST_Gender, @ST_BOD, @Email, @MaritalStatus, @Country, @City, @Edu_ID, @Track_ID, @Branch_ID, @St_SocialURL,@Intake_ID);
END;

EXEC AddStudent 1, '123-45-6789', 'John', 'Doe', 'M', '2000-01-01', 'john.doe@example.com', 'Single', 'USA', 'New York', 1, 1, 1, 'kjksdhhddjsh',1;

CREATE PROCEDURE GetStudents
AS
BEGIN
    SELECT * FROM Student;
END;

EXEC GetStudents

CREATE PROCEDURE GetStudentByID
    @St_ID INT
AS
BEGIN
    SELECT * FROM Student WHERE St_ID = @St_ID;
END;

EXEC GetStudentByID 1;

CREATE PROCEDURE UpdateStudent
    @St_ID INT,
    @St_SSN NVARCHAR(20),
    @ST_FName NVARCHAR(50),
    @ST_LName NVARCHAR(50),
    @ST_Gender NVARCHAR(10),
    @ST_BOD DATE,
    @Email NVARCHAR(100),
    @MaritalStatus NVARCHAR(20),
    @Country NVARCHAR(50),
    @City NVARCHAR(50),
    @Edu_ID INT,
    @Track_ID INT,
    @Branch_ID INT, 
	@St_SocialURL NVARCHAR(50),
	@Intake_ID INT
AS
BEGIN
    UPDATE Student SET St_SSN = @St_SSN, ST_FName = @ST_FName, ST_LName = @ST_LName, ST_Gender = @ST_Gender, ST_BOD = @ST_BOD, Email = @Email, MaritalStatus = @MaritalStatus, Country = @Country, City = @City, Edu_ID = @Edu_ID, Track_ID = @Track_ID, Branch_ID = @Branch_ID, St_SocialURL = @St_SocialURL, Intake_ID = @Intake_ID
    WHERE St_ID = @St_ID;
END;


CREATE PROCEDURE DeleteStudent
    @St_ID INT
AS
BEGIN
    DELETE FROM Student WHERE St_ID = @St_ID;
END;

---EdDUCATION STORED PROCEDURE
CREATE PROCEDURE AddEducation
    @Edu_ID INT,
    @GradYear INT,
    @Grade NVARCHAR(10),
    @Faculty NVARCHAR(100),
    @University NVARCHAR(100),
    @Department NVARCHAR(100)
AS
BEGIN
    INSERT INTO Education VALUES (@Edu_ID, @GradYear, @Grade, @Faculty, @University, @Department);
END;

EXEC AddEducation 1, 2024, 'A', 'Engineering', 'MIT', 'Computer Science';


CREATE PROCEDURE GetEducationByID
    @Edu_ID INT
AS
BEGIN
    SELECT * FROM Education WHERE Edu_ID = @Edu_ID;
END;

EXEC GetEducationByID 1;


CREATE PROCEDURE UpdateEducation
    @Edu_ID INT,
    @Grade NVARCHAR(10),
	@Faculty NVARCHAR(100),
	@University NVARCHAR(100),
	@Department NVARCHAR(100)
AS
BEGIN
    UPDATE Education SET Grade = @Grade, Faculty = @Faculty, University = @University, Department = @Department WHERE Edu_ID = @Edu_ID ;
END;

EXEC UpdateEducation 1, 'A+', 'Computer Science', 'Cairo', 'IS';


CREATE PROCEDURE DeleteEducation
    @Edu_ID INT
AS
BEGIN
    DELETE FROM Education WHERE Edu_ID = @Edu_ID;
END;

EXEC DeleteEducation 1;

---TRACK STORED PROCEDURES
CREATE PROCEDURE AddTrack
    @Track_ID INT,
    @Track_Name NVARCHAR(100),
    @Description NVARCHAR(255),
    @Duration INT,
    @Dept_ID INT
AS
BEGIN
    INSERT INTO Track VALUES (@Track_ID, @Track_Name, @Description, @Duration, @Dept_ID);
END;

EXEC AddTrack 77, 'Data Science', 'Machine Learning & AI', 12, 1;

CREATE PROCEDURE GetTrackByID
    @Track_ID INT
AS
BEGIN
    SELECT * FROM Track WHERE Track_ID = @Track_ID;
END;

EXEC GetTrackByID 77;


CREATE PROCEDURE UpdateTrack
    @Track_ID INT,
    @Track_Name NVARCHAR(100),
    @Description NVARCHAR(255),
    @Duration INT
AS
BEGIN
    UPDATE Track SET Track_Name = @Track_Name, Description = @Description, Duration = @Duration WHERE Track_ID = @Track_ID;
END;

EXEC UpdateTrack 77, 'AI & Data Science', 'Advanced AI techniques', 14;


CREATE PROCEDURE DeleteTrack
    @Track_ID INT
AS
BEGIN
    DELETE FROM Track WHERE Track_ID = @Track_ID;
END;

EXEC DeleteTrack 77;


-- BRANCH STORED PROCEDURES
CREATE PROCEDURE AddBranch
    @Branch_ID INT,
    @Branch_Name NVARCHAR(100),
    @Location NVARCHAR(255)
AS
BEGIN
    INSERT INTO Branch VALUES (@Branch_ID, @Branch_Name, @Location);
END;

EXEC AddBranch 77, 'New York Branch', 'New York, USA';


CREATE PROCEDURE GetBranchByID
    @Branch_ID INT
AS
BEGIN
    SELECT * FROM Branch WHERE Branch_ID = @Branch_ID;
END;

EXEC GetBranchByID 77;


CREATE PROCEDURE UpdateBranch
    @Branch_ID INT,
    @Branch_Name NVARCHAR(100),
    @Location NVARCHAR(255)
AS
BEGIN
    UPDATE Branch SET Branch_Name = @Branch_Name, Location = @Location WHERE Branch_ID = @Branch_ID;
END;

EXEC UpdateBranch 77, 'NYC Tech Hub', 'Manhattan, NY';


CREATE PROCEDURE DeleteBranch
    @Branch_ID INT
AS
BEGIN
    DELETE FROM Branch WHERE Branch_ID = @Branch_ID;
END;

EXEC DeleteBranch 1;

---DEPARTMENT STORED PROCEDURES
CREATE PROCEDURE AddDepartment
    @Dept_ID INT,
    @Dept_Name NVARCHAR(100)
AS
BEGIN
    INSERT INTO Department VALUES (@Dept_ID, @Dept_Name);
END;

EXEC AddDepartment 77, 'Computer Science';


CREATE PROCEDURE GetDepartmentByID
    @Dept_ID INT
AS
BEGIN
    SELECT * FROM Department WHERE Dept_ID = @Dept_ID;
END;

EXEC GetDepartmentByID 77;

CREATE PROCEDURE UpdateDepartment
    @Dept_ID INT,
    @Dept_Name NVARCHAR(100)
AS
BEGIN
    UPDATE Department SET Dept_Name = @Dept_Name WHERE Dept_ID = @Dept_ID;
END;

EXEC UpdateDepartment 77, 'Software Engineering';

CREATE PROCEDURE DeleteDepartment
    @Dept_ID INT
AS
BEGIN
    DELETE FROM Department WHERE Dept_ID = @Dept_ID;
END;

EXEC DeleteDepartment 77;

---INSTRUCTOR STORED PROCEDURES
CREATE PROCEDURE AddInstructor
    @Inst_ID INT,
    @Inst_FName NVARCHAR(50),
    @Inst_LName NVARCHAR(50),
    @Inst_Gender NVARCHAR(10),
    @Inst_DOB DATE,
    @Inst_SSN NVARCHAR(20),
    @Email NVARCHAR(100),
    @MaritalStatus NVARCHAR(20),
    @Salary DECIMAL(10,2),
    @Dept_ID INT,
    @Inst_Country NVARCHAR(50),
    @Inst_City NVARCHAR(50)
AS
BEGIN
    INSERT INTO Instructor VALUES (@Inst_ID, @Inst_FName, @Inst_LName, @Inst_Gender, @Inst_DOB, @Inst_SSN, @Email, @MaritalStatus, @Salary, @Dept_ID, @Inst_Country, @Inst_City);
END;

EXEC AddInstructor 777, 'John', 'Doe', 'M', '1980-05-20', '123-45-6789', 'john.doe@example.com', 'Married', 80000.00, 1, 'USA', 'New York';

CREATE PROCEDURE GetInstructorByID
    @Inst_ID INT
AS
BEGIN
    SELECT * FROM Instructor WHERE Inst_ID = @Inst_ID;
END;

EXEC GetInstructorByID 777;


CREATE PROCEDURE UpdateInstructor
    @Inst_ID INT,
    @Inst_FName NVARCHAR(50),
    @Inst_LName NVARCHAR(50),
    @Salary DECIMAL(10,2)
AS
BEGIN
    UPDATE Instructor SET Inst_FName = @Inst_FName, Inst_LName = @Inst_LName, Salary = @Salary WHERE Inst_ID = @Inst_ID;
END;

EXEC UpdateInstructor 777, 'Jane', 'Smith', 80000.00;

CREATE PROCEDURE DeleteInstructor
    @Inst_ID INT
AS
BEGIN
    DELETE FROM Instructor WHERE Inst_ID = @Inst_ID;
END;

EXEC DeleteInstructor 777;

---COURSES STORED PROCEDURE
CREATE PROCEDURE AddCourse
    @Course_ID INT,
    @Course_Name NVARCHAR(100),
    @Course_Degree INT,
    @Duration INT
AS
BEGIN
    INSERT INTO Courses VALUES (@Course_ID, @Course_Name, @Course_Degree, @Duration);
END;

EXEC AddCourse 777, 'Database Systems', 30, 4;

CREATE PROCEDURE GetCourseByID
    @Course_ID INT
AS
BEGIN
    SELECT * FROM Courses WHERE Course_ID = @Course_ID;
END;

EXEC GetCourseByID 777;


CREATE PROCEDURE UpdateCourse
    @Course_ID INT,
    @Course_Name NVARCHAR(100),
    @Course_Degree NVARCHAR(50),
    @Duration INT
AS
BEGIN
    UPDATE Courses SET Course_Name = @Course_Name, Course_Degree = @Course_Degree, Duration = @Duration WHERE Course_ID = @Course_ID;
END;

EXEC UpdateCourse 777, 'Advanced Database Systems', 50, 6;


CREATE PROCEDURE DeleteCourse
    @Course_ID INT
AS
BEGIN
    DELETE FROM Courses WHERE Course_ID = @Course_ID;
END;

EXEC DeleteCourse 777;



---PROGRAM STORED PROCEDURES
CREATE PROCEDURE AddProgram
    @Prog_ID INT,
    @Prog_Name NVARCHAR(100)
AS
BEGIN
    INSERT INTO Program VALUES (@Prog_ID, @Prog_Name);
END;

EXEC AddProgram 777, 'Software Development';

CREATE PROCEDURE GetProgramByID
    @Prog_ID INT
AS
BEGIN
    SELECT * FROM Program WHERE Prog_ID = @Prog_ID;
END;

EXEC GetProgramByID 777;


CREATE PROCEDURE UpdateProgram
    @Prog_ID INT,
    @Prog_Name NVARCHAR(100)
AS
BEGIN
    UPDATE Program SET Prog_Name = @Prog_Name WHERE Prog_ID = @Prog_ID;
END;

EXEC UpdateProgram 777, 'Artificial Intelligence';


CREATE PROCEDURE DeleteProgram
    @Prog_ID INT
AS
BEGIN
    DELETE FROM Program WHERE Prog_ID = @Prog_ID;
END;

EXEC DeleteProgram 777;

---EXAM STORED PROCEDURES
CREATE PROCEDURE AddExam
    @Exam_ID INT,
    @Exam_Name NVARCHAR(100),
	@Exam_Duration INT,
    @Exam_Date DATE,
    @Total_Marks INT,
    @Course_ID INT
AS
BEGIN
    INSERT INTO Exam VALUES (@Exam_ID, @Exam_Name, @Exam_Duration,@Exam_Date, @Total_Marks, @Course_ID);
END;

EXEC AddExam 777, 'Final Exam', 180,'2025-06-15', 100, 1;


CREATE PROCEDURE GetExamByID
    @Exam_ID INT
AS
BEGIN
    SELECT * FROM Exam WHERE Exam_ID = @Exam_ID;
END;

EXEC GetExamByID 777;


CREATE PROCEDURE UpdateExam
    @Exam_ID INT,
    @Exam_Name NVARCHAR(100),
	@Exam_Duration INT,
    @Exam_Date DATE,
    @Total_Marks INT
AS
BEGIN
    UPDATE Exam SET Exam_Name = @Exam_Name, Exam_Date = @Exam_Date, Exam_Duration = @Exam_Duration, Total_Marks = @Total_Marks WHERE Exam_ID = @Exam_ID;
END;

EXEC UpdateExam 1, 'Midterm Exam',  120,'2025-06-10', 100;

CREATE PROCEDURE DeleteExam
    @Exam_ID INT
AS
BEGIN
    DELETE FROM Exam WHERE Exam_ID = @Exam_ID;
END;

EXEC DeleteExam 777;

---QUESTION STORED PROCEDURES
CREATE PROCEDURE AddQuestion
    @Ques_ID INT,
    @Ques_Text NVARCHAR(255),
    @Ques_Mark INT,
    @Ques_Type NVARCHAR(50),
	@Course_ID INT
AS
BEGIN
    INSERT INTO Questions VALUES (@Ques_ID, @Ques_Text, @Ques_Mark, @Ques_Type, @Course_ID);
END;

EXEC AddQuestion 1, 'What is SQL?', 10, 'MCQ', 1;


CREATE PROCEDURE GetQuestionByID
    @Ques_ID INT
AS
BEGIN
    SELECT * FROM Questions WHERE Ques_ID = @Ques_ID;
END;

EXEC GetQuestionByID 1;

CREATE PROCEDURE UpdateQuestion
    @Ques_ID INT,
    @Ques_Text NVARCHAR(255),
    @Ques_Mark INT,
    @Ques_Type NVARCHAR(50),
	@Course_ID INT
AS
BEGIN
    UPDATE Questions SET Ques_Text = @Ques_Text, Ques_Mark = @Ques_Mark, Ques_Type = @Ques_Type, Course_ID= @Course_ID WHERE Ques_ID = @Ques_ID;
END;

EXEC UpdateQuestion 1, 'Define SQL.', 10, 'Short Answer', 1;


CREATE PROCEDURE DeleteQuestion
    @Ques_ID INT
AS
BEGIN
    DELETE FROM Questions WHERE Ques_ID = @Ques_ID;
END;

EXEC DeleteQuestion 1;

--CHOICES STORED PROCEDURES
CREATE PROCEDURE AddChoice
    @Choice_ID INT,
    @Choice_Text NVARCHAR(255),
    @Is_Correct BIT,
    @Ques_ID INT
AS
BEGIN
    INSERT INTO Choices VALUES (@Choice_ID, @Choice_Text, @Is_Correct, @Ques_ID);
END;

EXEC AddChoice 1, 'Structured Query Language', 1, 1;

CREATE PROCEDURE GetChoiceByID
    @Choice_ID INT
AS
BEGIN
    SELECT * FROM Choices WHERE Choice_ID = @Choice_ID;
END;

EXEC GetChoiceByID 1;


CREATE PROCEDURE UpdateChoice
    @Choice_ID INT,
    @Choice_Text NVARCHAR(255),
	@Ques_ID INT,
    @Is_Corrected INT
AS
BEGIN
    UPDATE Choices SET Choice_Text = @Choice_Text,Ques_ID = @Ques_ID,Is_Corrected = @Is_Corrected WHERE Choice_ID = @Choice_ID;
END;

EXEC UpdateChoice 1, 'SQL stands for Structured Query Language', 1,1;

CREATE PROCEDURE DeleteChoice
    @Choice_ID INT
AS
BEGIN
    DELETE FROM Choices WHERE Choice_ID = @Choice_ID;
END;

EXEC DeleteChoice 1;

-- TOPIC STORED PROCEDURES
CREATE PROCEDURE AddTopic
    @Topic_ID INT,
    @Topic_Name NVARCHAR(100),
	@Course_ID INT
AS
BEGIN
    INSERT INTO Topic VALUES (@Topic_ID, @Topic_Name,@Course_ID);
END;

EXEC AddTopic 777, 'Database Systems',1;


CREATE PROCEDURE GetTopicByID
    @Topic_ID INT
AS
BEGIN
    SELECT * FROM Topic WHERE Topic_ID = @Topic_ID;
END;

EXEC GetTopicByID 777;


CREATE PROCEDURE UpdateTopic
    @Topic_ID INT,
    @Topic_Name NVARCHAR(100),
	@Course_ID INT
AS
BEGIN
    UPDATE Topic SET Topic_Name = @Topic_Name, Course_ID = @Course_ID WHERE Topic_ID = @Topic_ID;
END;

EXEC UpdateTopic 1, 'Advanced Databases', 1;

CREATE PROCEDURE DeleteTopic
    @Topic_ID INT
AS
BEGIN
    DELETE FROM Topic WHERE Topic_ID = @Topic_ID;
END;

EXEC DeleteTopic 777;

--FREELANCE-JOB STORED PROCEDURES
CREATE PROCEDURE AddFreelanceJob
    @St_ID INT,
	@Freelance_id INT,
    @Description NVARCHAR(255),
    @StartDate DATE,
    @EndDate DATE,
    @Platform NVARCHAR(100),
	@Cost decimal(10, 2)
AS
BEGIN
    INSERT INTO Freelance_Job VALUES (@St_ID, @Freelance_id, @Description, @StartDate, @EndDate, @Platform, @Cost);
END;

EXEC AddFreelanceJob 1, 1, 'Web Development','2023-01-01', '2023-06-01', 'Upwork', 1500.00;

CREATE PROCEDURE GetFreelanceJobByID
    @St_ID INT
AS
BEGIN
    SELECT * FROM Freelance_Job WHERE St_ID = @St_ID;
END;

EXEC GetFreelanceJobByID 1;


CREATE PROCEDURE UpdateFreelanceJob
    @St_ID INT,
	@Freelance_id INT,
    @Description NVARCHAR(255),
    @Cost DECIMAL(10,2),
    @StartDate DATE,
    @EndDate DATE,
    @Platform NVARCHAR(100)
AS
BEGIN
    UPDATE Freelance_Job SET Cost = @Cost, StartDate = @StartDate, EndDate = @EndDate, Platform = @Platform
    WHERE St_ID = @St_ID AND @Freelance_id = @Freelance_id AND CAST(Description AS NVARCHAR(255)) = @Description;
END;

EXEC UpdateFreelanceJob 1, 1, 'Web Development', 1800.00, '2023-02-01', '2023-07-01', 'Freelancer';

CREATE PROCEDURE DeleteFreelanceJob
    @St_ID INT,
	@Freelance_id INT,
    @Description NVARCHAR(255)
AS
BEGIN
    DELETE FROM Freelance_Job WHERE St_ID = @St_ID AND CAST(Description AS NVARCHAR(255)) = @Description;
END;

EXEC DeleteFreelanceJob 1, 1, 'Web Development';


---GRADUATE STORED PROCEDURES
CREATE PROCEDURE AddGraduate
    @Grad_ID INT,
    @JobType NVARCHAR(100),
    @CompName NVARCHAR(100),
    @PositionTitle NVARCHAR(100),
    @Salary DECIMAL(10,2)
AS
BEGIN
    INSERT INTO Graduates VALUES (@Grad_ID,@JobType, @CompName, @PositionTitle, @Salary);
END;

EXEC AddGraduate 1,'Full-time', 'Google', 'Software Engineer', 90000.00;


CREATE PROCEDURE GetGraduateByID
    @Grad_ID INT
AS
BEGIN
    SELECT * FROM Graduates WHERE Grad_ID = @Grad_ID;
END;

EXEC GetGraduateByID 1;

CREATE PROCEDURE UpdateGraduate
    @Grad_ID INT,
    @JobType NVARCHAR(100),
    @CompName NVARCHAR(100),
    @PositionTitle NVARCHAR(100),
    @Salary DECIMAL(10,2)
AS
BEGIN
    UPDATE Graduates SET JobType = @JobType, CompName = @CompName, PositionTitle = @PositionTitle, Salary = @Salary
    WHERE Grad_ID = @Grad_ID;
END;

EXEC UpdateGraduate 1, 'Part-time', 'Microsoft', 'Data Analyst', 85000.00;


CREATE PROCEDURE DeleteGraduate
    @Grad_ID INT
AS
BEGIN
    DELETE FROM Graduates WHERE Grad_ID = @Grad_ID;
END;

EXEC DeleteGraduate 1;


---INTAKE STORED PROCEDURES
CREATE PROCEDURE AddIntake
    @Intake_ID INT,
    @Start_Date DATE,
    @End_Date DATE,
    @Year INT,
    @Intake_Round INT,
    @Prog_ID INT
AS
BEGIN
    INSERT INTO Intake VALUES (@Intake_ID, @Start_Date, @End_Date, @Year, @Intake_Round, @Prog_ID);
END;

EXEC AddIntake 777, '2023-09-01', '2024-06-01', 2023, 1, 1;


CREATE PROCEDURE GetIntakeByID
    @Intake_ID INT
AS
BEGIN
    SELECT * FROM Intake WHERE Intake_ID = @Intake_ID;
END;

EXEC GetIntakeByID 777;

CREATE PROCEDURE UpdateIntake
    @Intake_ID INT,
    @Start_Date DATE,
    @End_Date DATE,
    @Year INT,
    @Intake_Round INT,
    @Prog_ID INT
AS
BEGIN
    UPDATE Intake SET Start_Date = @Start_Date, End_Date = @End_Date, Year = @Year, Intake_Round = @Intake_Round, Prog_ID = @Prog_ID
    WHERE Intake_ID = @Intake_ID;
END;

EXEC UpdateIntake 1, '2023-10-01', '2024-07-01', 2024, 2, 2;

CREATE PROCEDURE DeleteIntake
    @Intake_ID INT
AS
BEGIN
    DELETE FROM Intake WHERE Intake_ID = @Intake_ID;
END;

EXEC DeleteIntake 1;

---STUDENTS PHONES STORED PROCEDRES

CREATE PROCEDURE AddStudentPhone
    @St_ID INT,
    @StPhone NVARCHAR(20)
AS
BEGIN
    INSERT INTO St_Phone VALUES (@St_ID, @StPhone);
END;

EXEC AddStudentPhone 1, '123-456-7890';


CREATE PROCEDURE GetStudentPhones
    @St_ID INT
AS
BEGIN
    SELECT * FROM St_Phone WHERE St_ID = @St_ID;
END;

EXEC GetStudentPhones 1;


CREATE PROCEDURE UpdateStudentPhone
    @St_ID INT,
    @OldPhone NVARCHAR(20),
    @NewPhone NVARCHAR(20)
AS
BEGIN
    UPDATE St_Phone SET StPhone = @NewPhone WHERE St_ID = @St_ID AND StPhone = @OldPhone;
END;

EXEC UpdateStudentPhone 1, '123-456-7890', '987-654-3210';

CREATE PROCEDURE DeleteStudentPhone
    @St_ID INT,
    @StPhone NVARCHAR(20)
AS
BEGIN
    DELETE FROM St_Phone WHERE St_ID = @St_ID AND StPhone = @StPhone;
END;

EXEC DeleteStudentPhone 1, '987-654-3210';


---STUDENT CERTIFICATES STORED PROCEDURES

CREATE PROCEDURE AddStudentCertf
    @St_ID INT,
    @CertfName NVARCHAR(100),
    @StartDate DATE,
    @EndDate DATE,
    @URLcertf NVARCHAR(255),
    @Platform NVARCHAR(100),
	@Certf_ID INT
AS
BEGIN
    INSERT INTO St_Certf VALUES (@St_ID, @CertfName, @StartDate, @EndDate, @URLcertf, @Platform,@Certf_ID);
END;

EXEC AddStudentCertf 1, 'SQL Certification', '2023-01-01', '2023-12-31', 'http://cert-url.com', 'Coursera',1;


CREATE PROCEDURE GetStudentCertf
    @St_ID INT
AS
BEGIN
    SELECT * FROM St_Certf WHERE St_ID = @St_ID;
END;

EXEC GetStudentCertf 1;


CREATE PROCEDURE UpdateStudentCertf
    @St_ID INT,
    @CertfName NVARCHAR(100),
    @NewEndDate DATE,
    @NewURLcertf NVARCHAR(255),
    @NewPlatform NVARCHAR(100)
AS
BEGIN
    UPDATE St_Certf SET EndDate = @NewEndDate, URLcertf = @NewURLcertf, Platform = @NewPlatform
    WHERE St_ID = @St_ID AND CertfName = @CertfName;
END;

EXEC UpdateStudentCertf 1, 'SQL Certification', '2024-12-31', 'http://new-cert-url.com', 'Udemy';


CREATE PROCEDURE DeleteStudentCertf
    @St_ID INT,
    @CertfName NVARCHAR(100)
AS
BEGIN
    DELETE FROM St_Certf WHERE St_ID = @St_ID AND CertfName = @CertfName;
END;

EXEC DeleteStudentCertf 1, 'SQL Certification';



