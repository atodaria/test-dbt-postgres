
{{ config(materialized='table') }}

with source_data as (

    select 
	sd.student_id,
	sd.building,
	sd.re_eval_due_date,
	sd.current_iep_initiation_date
from google_sheets.students_data as sd

)

select *
from source_data
