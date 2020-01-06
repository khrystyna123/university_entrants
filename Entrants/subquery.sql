select z.subject,
	(select avg(p.point)
     from Points p) as avg_point
from ZNOs z
order by z.subject;

select de.app_count/e.entr_count as application_stud
from (select count(*) as entr_count from Entrants) as e,
	 (select count(*) as app_count from Departaments_Entrants) as de;

select *
from VNZs
where VNZs.id in (select vnz_id
				 from Departaments
                 where name = 'History of Ukraine')
order by VNZs.city;

select v.name, 
	(select count(e.id)
     from Departaments d, Departaments_Entrants de, Entrants e
     where e.id = de.entrants_id and d.id = de.departaments_id
     and d.vnz_id = v.id) as number_of_entrants
from VNZs v 
where v.city<>'Kyiv'
order by number_of_entrants desc;

select *
from Entrants e
where 'Kyiv' in (select city
				 from VNZs v
				 join Departaments d on v.id = vnz_id
				 join Departaments_Entrants de on d.id = departaments_id
                 where e.id = de.entrants_id
				 )
order by lastname, firstname;

select *
from Departaments d
where '2000-09-01' < all (select date_of_birth
						  from Entrants e
                          join Departaments_Entrants de on e.id = de.entrants_id
                          where de.departaments_id = d.id)
order by name;

select e.lastname, e.firstname, e.surname
from Entrants e
where e.id = any (select p.entrants_id
				  from Points p
                  join ZNOs z on z.id = p.zno_id
                  where z.subject = 'Mathematic')
order by e.lastname, e.firstname;

select e.lastname, e.firstname, e.surname
from Entrants e
where exists (select *
			  from Departaments d
			  join Departaments_Entrants de on de.departaments_id = d.id
			  where e.id = de.entrants_id)
order by e.lastname, e.firstname;