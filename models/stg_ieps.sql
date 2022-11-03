select 
	sd.student_id,
	sd.building,
	sd.re_eval_due_date,
	sd.current_iep_initiation_date
from google_sheets.students_data as sd