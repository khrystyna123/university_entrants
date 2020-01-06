create view Application(Last_name, First_name, Surname, Departament)
as select e.lastname, e.firstname, e.surname, d.name
   from Entrants e, Departaments d, Departaments_Entrants de
   where d.id = de.departaments_id and e.id = de.entrants_id
   order by e.lastname, e.firstname;
   
select * from Application;

create view Entrants_under_18
as select *
   from Entrants e
   where e.date_of_birth > '2000-08-01';
   
select * from Entrants_under_18;

create view University(University, Faculty, Department)
as select v.name, d.faculty, d.name
   from VNZs v, Departaments d
   where v.id = d.vnz_id
   order by v.name, d.faculty, d.name;
   
select * from University;

create view ZNO_Points(ZNO, Average_point, Number_of_students)
as select z.subject, avg(p.point) as average, count(p.zno_id)
   from ZNOs z, Points p
   where p.zno_id = z.id
   group by z.subject
   order by average desc;
   
select * from ZNO_Points;

create view Applications_count(VNZ, Number_of_applications)
as select v.name, 
	(select count(e.id)
     from Departaments d, Departaments_Entrants de, Entrants e
     where e.id = de.entrants_id and d.id = de.departaments_id
     and d.vnz_id = v.id) as num
   from VNZs v 
   order by num desc;
   
select * from Applications_count;