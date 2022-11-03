select 
	sd.student_id,
	sd.building,
	sd.re_eval_due_date,
	sd.current_iep_initiation_date,
	sd.discipline,
	COALESCE(sd.total_minutes_per_month,sd.total_minutes_per_week) as iep_minutes,
	(CASE WHEN COALESCE(sd.total_minutes_per_month,0) > 0 THEN 'MONTH'
	WHEN COALESCE(sd.total_minutes_per_week,0) > 0 THEN 'WEEK'
	END) AS frequency
from google_sheets.students_data as sd