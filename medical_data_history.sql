create database project_medical_data_history;

select * from admissions;
select * from doctors;
select * from patients;
select * from province_name;
alter table admissions rename column attending_doctor_id to doctor_id;
select first_name,last_name,gender from patients where gender= 'm';
select first_name,last_name from patients where allergies ='';
select first_name from patients where first_name like 'c%';

select first_name,last_name from patients where weight between '100' and '120';

update patients set allergies = 'NKA' where allergies = ''; 

select concat(first_name,' ',last_name) as full_name from patients;

select p.first_name,p.last_name,pn.province_name from 
patients p
join province_name pn on p.province_id = pn.province_id;

select count(*) from patients where year(birth_date) ='2010';

select first_name,last_name,height as greatest_height from patients order by greatest_height desc limit 1; 

select * from patients where patient_id= '1,45,534,879,1000';

select count(*) as total_admissions from admissions;

select * from admissions where admission_date = discharge_date;

select count(*) as total_admissions from admissions where patient_id = '579';

select distinct city from patients where province_id = 'ns';

select first_name,last_name,birth_date from patients where height >160 and weight >70;

select distinct year(birth_date) as unique_birth_year from patients order by unique_birth_year asc; 

select first_name from patients group by first_name having count(*) =1;

select patient_id,first_name from patients where lower(first_name) like 's%s' and length(first_name)>=6;

select p.patient_id,p.first_name,p.last_name from 
patients p 
join admissions a on p.patient_id = a.patient_id 
where a.diagnosis = 'dementia';

select first_name from patients order by length(first_name), first_name;

select count(case when gender = 'm' then 1 end) as male_patients,
count(case when gender = 'f' then 1 end) as female_patients
from patients;

select patient_id,diagnosis from admissions group by patient_id, diagnosis having count(*)>1;

select city,count(*) as total_num_patients from patients group by city
order by total_num_patients desc,city asc;

select first_name,last_name, 'patient' as role 
from patients union
select first_name,last_name,'doctor' as role
from doctors;

select allergies, count(*) as popularity
from patients
where allergies is not null
group by allergies order by popularity desc;

select first_name,last_name,birth_date from patients where
year(birth_date) between 1970 and 1979 order by birth_date asc;

select concat(upper(last_name), ',' ,lower(first_name)) as full_name from
patients
order by first_name desc;

select province_id,sum(height) as total_patient_height from patients
group by province_id having total_patient_height>=7000;

select max(weight)-min(weight) as weight_difference from patients
where last_name = 'maroni';

select day(admission_date) as day_admission,count(*) as numbers_of_admission
from admissions
group by day_admission
order by numbers_of_admission desc;

select floor(weight/10)*10 as weight_group, count(*) as total_patients
from patients
group by weight_group order by weight_group desc;

select patient_id,weight,height,case
when weight/power(height/100.0,2)>=30 then 1 else 0
end as isobese
from patients;

select p.patient_id,p.first_name,p.last_name,d.specialty as doctor_specialty
from patients p join 
admissions a on p.patient_id = a.patient_id
join doctors d on a.doctor_id = d.doctor_id
where a.diagnosis = 'epilepsy' and
d.first_name = 'lisa';

select p.patient_id,
concat(p.patient_id,length(p.last_name),year(p.birth_date))
 as temp_password from  patients p
 where exists(select 1 from admissions a where a.patient_id = p.patient_id);
 