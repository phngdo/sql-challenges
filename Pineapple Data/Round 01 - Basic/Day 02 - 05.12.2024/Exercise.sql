-- 01. Tìm những sinh viên có GPA thấp hơn 2.0 và học ngành "Công nghệ thông tin”
SELECT Student_ID,
	     Full_Name,
	     Age,
	     Major,
	     GPA,
	     Enrollment_Date,
	     Graduation_Year
FROM dbo.Students
WHERE GPA < 2.0
  AND Major = 'Computer Sci';

-- 02. Lọc danh sách các sinh viên có GPA lớn hơn 3.5 và không bị trùng ngành học
SELECT DISTINCT Major,
                Full_Name,
                GPA
FROM dbo.Students
WHERE GPA > 3.5;

-- 03. Lọc ra những sinh viên có tuổi từ 20 đến 25 và có GPA >= 3.0
SELECT Student_ID,
       Full_Name,
       Age,
       Major,
       GPA,
       Enrollment_Date,
       Graduation_Year
FROM dbo.Students
WHERE (Age BETWEEN 20 AND 25)
  AND GPA >= 3.0;
