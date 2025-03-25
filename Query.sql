use Examination_Sys;

--------------------------- Student ----------------------------
-- Select
CREATE PROCEDURE GetAllStudents
AS
BEGIN
    SELECT * FROM Student;
END;
EXEC GetAllStudents;

-- Insert
CREATE PROCEDURE InsertStudent
    @St_Id INT,
    @St_Name NVARCHAR(50),
    @City NVARCHAR(50),
    @Age INT,
    @Dept_Id INT
AS
BEGIN
    INSERT INTO Student (St_Id, St_Name, Address, Age, Dept_Id) 
    VALUES (@St_Id, @St_Name, @City, @Age, @Dept_Id);
END;
EXEC InsertStudent 11, 'Hager Yasser', 'Sohag', 22, 1;

-- Update
CREATE PROCEDURE UpdateStudent
    @St_Id INT,
    @NewAge INT
AS
BEGIN
    UPDATE Student SET Age = @NewAge WHERE St_Id = @St_Id;
END;
EXEC UpdateStudent 11, 23;

-- Delete
CREATE PROCEDURE DeleteStudent
    @St_Id INT
AS
BEGIN
    DELETE FROM Student WHERE St_Id = @St_Id;
END;
EXEC DeleteStudent 11;

--select * from Student;
------------------------- Answers ----------------------------------
-- Select
CREATE PROCEDURE GetAllAnswers
AS
BEGIN
    SELECT * FROM Answers;
END;
EXEC GetAllAnswers;

--Insert
CREATE PROCEDURE InsertAnswer
    @Ans_Id INT,
    @Ques_Id INT,
    @St_Id INT,
    @Selected_Option_Id INT
AS
BEGIN
    INSERT INTO Answers (Answer_Id, Ques_Id, St_Id, Selected_Option_Id) 
    VALUES (@Ans_Id, @Ques_Id, @St_Id, @Selected_Option_Id);
END;
EXEC InsertAnswer 11, 5, 10, 2;

-- Update
CREATE PROCEDURE UpdateAnswer
    @St_Id INT,
    @NewSelectedOption INT
AS
BEGIN
    UPDATE Answers SET Selected_Option_Id = @NewSelectedOption WHERE St_Id = @St_Id;
END;
EXEC UpdateAnswer 10, 2;

--Delete
CREATE PROCEDURE DeleteAnswer
    @St_Id INT
AS
BEGIN
    DELETE FROM Answers WHERE St_Id = @St_Id;
END;
EXEC DeleteAnswer 4;

------------------- Courses ------------------------
-- Select
Alter PROCEDURE GetAllCourses
AS
BEGIN
    SELECT * FROM Coursee;  --  ’ÕÌÕ «”„ «·ÃœÊ·
END;
EXEC GetAllCourses;

-- Insert
ALTER PROCEDURE InsertCourse
    @Crs_Id INT,
    @Crs_Name NVARCHAR(50),
    @Duration INT,
     @Dep_Id INT,
	 @Ins_Id INT
   
AS
BEGIN
    INSERT INTO Coursee(Crs_Id, Crs_Name, Duration, Dept_Id, Ins_Id) 
    VALUES (@Crs_Id, @Crs_Name, @Duration, @Ins_Id, @Dep_Id);
END;
EXEC InsertCourse 15, 'DotNet', 30, 1, 1;

-- Update
CREATE PROCEDURE UpdateCourse
    @Crs_Id INT,
    @NewCrs_Name NVARCHAR(50)
AS
BEGIN
    UPDATE Coursee SET Crs_Name = @NewCrs_Name WHERE Crs_Id = @Crs_Id;
END;
EXEC UpdateCourse 15, 'Linq';

-- Delete
CREATE PROCEDURE DeleteCourse
    @Crs_Name NVARCHAR(50)
AS
BEGIN
    DELETE FROM Coursee WHERE Crs_Name = @Crs_Name;
END;
EXEC DeleteCourse 'Linq';


------------------- Questions ------------------------
-- Select
CREATE PROCEDURE GetAllQuestions
AS
BEGIN
    SELECT * FROM Questions;
END;
EXEC GetAllQuestions;

-- Insert
CREATE PROCEDURE InsertQuestion
    @Ques_Id INT,
    @Ques_Type NVARCHAR(10),
    @Ques_Text NVARCHAR(255),
    @Crs_Id INT
AS
BEGIN
    INSERT INTO Questions (Ques_Id, Ques_Type, Text, Crs_Id) 
    VALUES (@Ques_Id, @Ques_Type, @Ques_Text, @Crs_Id);
END;
EXEC InsertQuestion 11, 'T/F', 'What is Linq?', 10;

-- Update
CREATE PROCEDURE UpdateQuestion
    @Old_Crs_Id INT,
    @New_Crs_Id INT
AS
BEGIN
    UPDATE Questions SET Crs_Id = @New_Crs_Id WHERE Crs_Id = @Old_Crs_Id;
END;
EXEC UpdateQuestion 10, 2;

-- Delete
ALTER PROCEDURE DeleteQuestion
    @Que_Id INT
AS
BEGIN
    DELETE FROM Questions WHERE Ques_Id = @Que_Id;
END;
EXEC DeleteQuestion 11;


------------------ Instructors ------------------
-- Select
CREATE PROCEDURE GetAllInstructors
AS
BEGIN
    SELECT * FROM Instructor;
END;
EXEC GetAllInstructors;

-- Insert
CREATE PROCEDURE InsertInstructor
    @Ins_Id INT,
    @Ins_Name NVARCHAR(50),
    @Degree NVARCHAR(100),
    @Salary decimal(10,2),
    @Dep_Id INT
AS
BEGIN
    INSERT INTO Instructor (Ins_Id, Ins_Name, Degree, Salary, Dept_Id) 
    VALUES (@Ins_Id, @Ins_Name, @Degree, @Salary, @Dep_Id);
END;
EXEC InsertInstructor 11, 'Hager Yasser', 'Sohag', 22, 1;

-- Update
CREATE PROCEDURE UpdateInstructor
    @Ins_Id INT,
    @New_Ins_Name NVARCHAR(50)
AS
BEGIN
    UPDATE Instructor SET Ins_Name = @New_Ins_Name WHERE Ins_Id = @Ins_Id;
END;
EXEC UpdateInstructor 11, 'Sara';

-- Delete
CREATE PROCEDURE DeleteInstructor
    @Ins_Id INT
AS
BEGIN
    DELETE FROM Instructor WHERE Ins_Id = @Ins_Id;
END;
EXEC DeleteInstructor 11;
---------------------- department -----------------------------
-- Select
CREATE PROCEDURE GetAllDepartments
AS
BEGIN
    SELECT * FROM departmentt;
END;
EXEC GetAllDepartments;

-- Insert
CREATE PROCEDURE InsertDepartment @Dept_Id INT, @Dept_Name NVARCHAR(50), @Location NVARCHAR(50), @Manager_Id INT
AS
BEGIN
    INSERT INTO departmentt VALUES(@Dept_Id, @Dept_Name, @Location, @Manager_Id);
END;
EXEC InsertDepartment 12, 'IT', 'Kena', 5;

-- Update
ALTER PROCEDURE UpdateDepartment @Dept_Id INT, @New_Dept_Name NVARCHAR(50)
AS
BEGIN
    UPDATE departmentt SET Dept_Name= @New_Dept_Name WHERE Dept_Id=@Dept_Id;
END;
EXEC UpdateDepartment 12, 'Information Technology';

-- Delete
CREATE PROCEDURE DeleteDepartment @Dept_Id INT
AS
BEGIN
    DELETE FROM departmentt WHERE Dept_Id=@Dept_Id;
END;
EXEC DeleteDepartment 12;

--------------------- Exams -----------------------
-- Select
CREATE PROCEDURE GetAllExams
AS
BEGIN
    SELECT * FROM Exams;
END;
EXEC GetAllExams;

-- Insert
ALTER PROCEDURE InsertExam @Exam_Id INT, @Crs_Id INT
AS
BEGIN
    INSERT INTO Exams VALUES(@Exam_Id, @Crs_Id);
END;
EXEC InsertExam 11, 10;

-- Update
ALTER PROCEDURE UpdateExam @Old_Exam_Id INT, @New_Exam_Id INT
AS
BEGIN
    UPDATE Exams SET Exam_Id=@New_Exam_Id WHERE Exam_Id=@Old_Exam_Id;
END;
EXEC UpdateExam 5, 12;

-- Delete
CREATE PROCEDURE DeleteExam @Exam_Id INT
AS
BEGIN
    DELETE FROM Exams WHERE Exam_Id=@Exam_Id;
END;
EXEC DeleteExam 10;

-------------------- Exam_Ques ----------------------------
-- Select
CREATE PROCEDURE GetAllExamQuestions
AS
BEGIN
    SELECT * FROM Exam_Ques;
END;
EXEC GetAllExamQuestions;

-- Insert
CREATE PROCEDURE InsertExamQuestion @Exam_Id INT, @Question_Id INT
AS
BEGIN
    INSERT INTO Exam_Ques VALUES(@Exam_Id, @Question_Id);
END;
EXEC InsertExamQuestion 11, 15;

-- Update
CREATE PROCEDURE UpdateExamQuestion @Old_Exam_Id INT, @New_Exam_Id INT
AS
BEGIN
    UPDATE Exam_Ques SET Exam_Id=@New_Exam_Id WHERE Exam_Id=@Old_Exam_Id;
END;
EXEC UpdateExamQuestion 1, 4;

-- Delete
CREATE PROCEDURE DeleteExamQuestion @Exam_Id INT
AS
BEGIN
    DELETE FROM Exam_Ques WHERE Exam_Id=@Exam_Id;
END;
EXEC DeleteExamQuestion 6;

--------------------- Stu_Course --------------------------
-- Select
CREATE PROCEDURE GetAllStudentCourses
AS
BEGIN
    SELECT * FROM Stu_Course;
END;
EXEC GetAllStudentCourses;

-- Insert
CREATE PROCEDURE InsertStudentCourse @St_Id INT, @Crs_Id INT, @Grade NVARCHAR(10)
AS
BEGIN
    INSERT INTO Stu_Course VALUES(@St_Id, @Crs_Id, @Grade);
END;
EXEC InsertStudentCourse 1, 5, '20';

-- Update
CREATE PROCEDURE UpdateStudentCourse @St_Id INT, @New_Grade NVARCHAR(10)
AS
BEGIN
    UPDATE Stu_Course SET Grade=@New_Grade WHERE St_Id=@St_Id;
END;
EXEC UpdateStudentCourse 100, 'A';

-- Delete
CREATE PROCEDURE DeleteStudentCourse @St_Id INT
AS
BEGIN
    DELETE FROM Stu_Course WHERE St_Id=@St_Id;
END;
EXEC DeleteStudentCourse 5;

------------------------- Stu_Exam ------------------------------
-- Select
CREATE PROCEDURE GetAllStudentExams
AS
BEGIN
    SELECT * FROM Stu_Exam;
END;
EXEC GetAllStudentExams;

-- Insert
CREATE PROCEDURE InsertStudentExam @St_Id INT, @Exam_Id INT
AS
BEGIN
    INSERT INTO Stu_Exam VALUES(@St_Id, @Exam_Id);
END;
EXEC InsertStudentExam 1, 5;

-- Update
CREATE PROCEDURE UpdateStudentExams @St_Id INT, @Exam_Id INT
AS
BEGIN
    UPDATE Stu_Exam SET St_Id=@St_Id WHERE Exam_Id=@Exam_Id;
END;
EXEC UpdateStudentExams 10, 3;

-- Delete
CREATE PROCEDURE DeleteStudentExams @St_Id INT
AS
BEGIN
    DELETE FROM Stu_Exam WHERE St_Id=@St_Id;
END;
EXEC DeleteStudentExams 50;

------------------------- Options ------------------------------
-- Select
CREATE PROCEDURE GetAllOptions
AS
BEGIN
    SELECT * FROM Options;
END;
EXEC GetAllOptions;

-- Insert
CREATE PROCEDURE InsertOptions @option_Id INT, @ques_Id INT, @optionText nvarchar(255), @isCorrectOption bit
AS
BEGIN
    INSERT INTO Options VALUES(@option_Id, @ques_Id, @optionText, @isCorrectOption);
END;
EXEC InsertOptions 21, 11, 'Physics', True;

-- Update
CREATE PROCEDURE UpdateOptions @option_Id INT, @optionText nvarchar(255)
AS
BEGIN
    UPDATE Options SET Option_Text=@optionText WHERE Option_Id=@option_Id;
END;
EXEC UpdateStudentExams 21, 'Advanced Sql';

-- Delete
CREATE PROCEDURE DeleteOption @option_Id INT
AS
BEGIN
    DELETE FROM Options WHERE Option_Id=@option_Id;
END;
EXEC DeleteOption 21;
