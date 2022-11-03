
select * from {{ source('pgtestwithmodels_google_sheets', 'students_data') }}