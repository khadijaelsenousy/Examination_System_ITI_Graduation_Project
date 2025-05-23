---------------- ----------------------------Test Exam PROCEDURE --------------------------------------

---------------------------------------- Generate Exam ------------------
GenerateExam @Exam_ID = 7,@course_ID = 133,@Exam_Duration = 15,@Num_Questions = 10,@Inst_ID = 40
----------------------------------------


-----------------------------------Get_Exam_Questions_Choices---------------------------

Get_Exam_Questions_Choices @Exam_ID = 7


----------------------------------------------------------------------------------------


------------------------------------------ StudentAnswers ----------------------------

----------Answers Choices for each Question -----------------------
DECLARE @Answers QuestionAnswers;

INSERT INTO @Answers VALUES 
    (529, 'Control and conversion of electrical power'), 
    (4291, 'A theoretical approach with no application'), 
    (4293, 'A misconception'), 
    (4297, 'A misconception'), 
    (4298, 'An unrelated term'), 
    (4299, 'A technology unrelated to Security Log Analysis and Correlation'), 
    (4308, 'A legacy tool'), 
    (4309, 'A misconception'), 
    (4311, 'True'), 
    (4313, 'True');

EXEC StudentAnswers 
    @Exam_ID = 7, 
    @St_ID = 202, 
    @Questions_Answers = @Answers;

----------------------------------------------------------------------------------------------------
------------------------------------- Exam Correction ----------------------------------------------

CorrectExam @Exam_ID =55,@St_ID = 113