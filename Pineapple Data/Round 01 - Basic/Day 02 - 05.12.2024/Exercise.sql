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
