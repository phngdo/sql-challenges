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

-- 04. Lọc ra các sinh viên có điểm GPA không phải là NULL và lớn hơn 3.5.
SELECT Student_ID,
       Full_Name,
       Age,
       Major,
       GPA,
       Enrollment_Date,
       Graduation_Year
FROM dbo.Students
WHERE GPA IS NOT NULL
  AND GPA > 3.5;

-- 05. Tìm tất cả các sinh viên có năm tốt nghiệp là NULL và có điểm GPA lớn hơn 3.0.
SELECT Student_ID,
       Full_Name,
       Age,
       Major,
       GPA,
       Enrollment_Date,
       Graduation_Year
FROM dbo.Students
WHERE Graduation_Year IS NULL
  AND GPA > 3.0;

-- 06. Tìm những sinh viên có tuổi lớn hơn 21 và điểm GPA có giá trị (không phải NULL), sau đó sắp xếp theo tên sinh viên.
SELECT Student_ID,
       Full_Name,
       Age,
       Major,
       GPA,
       Enrollment_Date,
       Graduation_Year
FROM dbo.Students
WHERE Age > 21
  AND GPA IS NOT NULL
ORDER BY Full_Name;

-- 07. Tính số lượng sinh viên có điểm GPA lớn hơn 3.0, chia theo ngành học, và chỉ lấy những ngành có ít nhất 2 sinh viên.
SELECT Major,
       COUNT(Student_ID) AS Count_Student
FROM dbo.Students
WHERE GPA > 3.0
GROUP BY Major
HAVING COUNT(Student_ID) >= 2;
