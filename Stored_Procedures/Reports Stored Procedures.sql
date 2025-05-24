-- Report 1: Students Information by Department
CREATE PROCEDURE GetStudentsByDepartment
    @Dept_ID INT
AS
BEGIN
    SELECT S.*
    FROM Student S
    JOIN Track T ON S.Track_ID = T.Track_ID
    WHERE T.Dept_ID = @Dept_ID;
END;

EXEC GetStudentsByDepartment 1;


-- Report 2: Student Grades in All Courses

<<<<<<< HEAD
Create PROCEDURE GetStudentGrades
    @St_ID INT
AS
BEGIN
    SELECT 
        C.Course_Name, 
        ISNULL(SUM(DISTINCT ES.St_Score), 0) AS Total_St_Score 
    FROM Courses C
    inner JOIN Exam E ON C.Course_ID = E.Course_ID
    inner JOIN Exam_Student ES ON E.Exam_ID = ES.Exam_ID AND ES.St_ID = @St_ID
    WHERE C.Course_ID IS NOT NULL 
    GROUP BY C.Course_Name; 
END;
GO


EXEC GetStudentGrades 200;

=======
Create PROCEDURE GetStudentGrades
    @St_ID INT
AS
BEGIN
    SELECT 
        C.Course_Name, 
        ISNULL(SUM(DISTINCT ES.St_Score), 0) AS Total_St_Score 
    FROM Courses C
    inner JOIN Exam E ON C.Course_ID = E.Course_ID
    inner JOIN Exam_Student ES ON E.Exam_ID = ES.Exam_ID AND ES.St_ID = @St_ID
    WHERE C.Course_ID IS NOT NULL 
    GROUP BY C.Course_Name; 
END;
GO


EXEC GetStudentGrades 200;

>>>>>>> 40d0f6a (Renamed folders for cleaner paths)


-- Report 3: Instructor's Courses and Student Count
CREATE PROCEDURE GetInstructorCourse
    @Inst_ID INT
AS
BEGIN
    SELECT C.Course_Name, COUNT(S.St_ID) AS Student_Count
    FROM Inst_Courses IC
    JOIN Courses C ON IC.Course_ID = C.Course_ID
    JOIN Track_Courses TC ON C.Course_ID = TC.Course_ID
    JOIN Track T ON TC.Track_ID = T.Track_ID
    JOIN Student S ON S.Track_ID = T.Track_ID
    WHERE IC.Inst_ID = @Inst_ID
    GROUP BY C.Course_Name;
END;
GO

EXEC GetInstructorCourse 1;

-- Report 4: Course Topics
CREATE PROCEDURE GetCourseTopics
    @Course_ID INT
AS
BEGIN
    SELECT T.topic_name
    FROM Topic T
    WHERE Course_ID = @Course_ID;
END;

EXEC GetCourseTopics 4;

---Report 6

<<<<<<< HEAD
CREATE PROCEDURE GettExamReport
    @Exam_ID INT,
    @Student_ID INT
AS
BEGIN
    SELECT 
        Q.[Ques_ID],
        Q.[Ques_Text],
        SA.[St_Answer]
    FROM [dbo].[Questions] Q
    LEFT JOIN [dbo].[Exam_Student] SA
        ON Q.[Ques_ID] = SA.[Ques_ID]
        AND SA.[St_ID] = @Student_ID
    WHERE SA.[Exam_ID] = @Exam_ID;
END;
GO

---Report 5
CREATE PROCEDURE GetExamQuestionsWithChoices
    @Exam_ID INT
AS
BEGIN
    SELECT 
        Q.[Ques_ID],
        Q.[Ques_Text],
        C.[Choice_ID],
        C.[Choice_Text],
        C.[Is_Corrected]
    FROM [dbo].[Exam_Questions] EQ
    INNER JOIN [dbo].[Questions] Q
        ON EQ.[Ques_ID] = Q.[Ques_ID]
    LEFT JOIN [dbo].[Choices] C
        ON Q.[Ques_ID] = C.[Ques_ID]
    WHERE EQ.Exam_ID = @Exam_ID
    ORDER BY Q.[Ques_ID], C.[Choice_ID];
END;
GO
=======
CREATE PROCEDURE GettExamReport
    @Exam_ID INT,
    @Student_ID INT
AS
BEGIN
    SELECT 
        Q.[Ques_ID],
        Q.[Ques_Text],
        SA.[St_Answer]
    FROM [dbo].[Questions] Q
    LEFT JOIN [dbo].[Exam_Student] SA
        ON Q.[Ques_ID] = SA.[Ques_ID]
        AND SA.[St_ID] = @Student_ID
    WHERE SA.[Exam_ID] = @Exam_ID;
END;
GO

---Report 5
CREATE PROCEDURE GetExamQuestionsWithChoices
    @Exam_ID INT
AS
BEGIN
    SELECT 
        Q.[Ques_ID],
        Q.[Ques_Text],
        C.[Choice_ID],
        C.[Choice_Text],
        C.[Is_Corrected]
    FROM [dbo].[Exam_Questions] EQ
    INNER JOIN [dbo].[Questions] Q
        ON EQ.[Ques_ID] = Q.[Ques_ID]
    LEFT JOIN [dbo].[Choices] C
        ON Q.[Ques_ID] = C.[Ques_ID]
    WHERE EQ.Exam_ID = @Exam_ID
    ORDER BY Q.[Ques_ID], C.[Choice_ID];
END;
GO
>>>>>>> 40d0f6a (Renamed folders for cleaner paths)
