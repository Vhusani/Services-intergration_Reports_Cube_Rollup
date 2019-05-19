select m.*, f.FacilitatorID as FaciliID
from Polokwane.Facilitator as f join Polokwane.Course as c 
on f.FacilitatorID = c.FK_FacilitatorID join Polokwane.Student as s
on c.CourseID = s.FK_CourseID join Polokwane.Marks as m
on s.StudentID = m.FK_StudentID