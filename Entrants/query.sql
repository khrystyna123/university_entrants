select lastname, firstname, surname, date_of_birth
from Entrants
where lastname like '%k%'
order by date_of_birth;

select lastname, firstname, surname,
	extract(day from date_of_birth) as day,
    extract(month from date_of_birth) as month,
    extract(year from date_of_birth) as year
from Entrants
where date_of_birth >= '2000-01-01'
order by month, day;

select count(id), city
from VNZs
group by city;

select program, count(id)
from Departaments 
where program = name
group by program;

select point, count(id)
from Points
group by point
having point >= 190 or point between 100 and 110;

select z.subject, avg(p.point)
from ZNOs z
inner join Points p
on z.id = p.zno_id
group by subject;

select e.lastname, e.firstname, e.surname, p.point
from Entrants e
left join Points p
on e.id = p.entrants_id 
where p.point like '17%';

select v.name, d.name
from VNZs v
left join Departaments d 
on d.vnz_id = v.id
where v.name is not null and v.city not in ('Kyiv', 'Lviv')
order by v.name, d.name;

select e.lastname, e.firstname, e.surname, z.subject
from Entrants e
left join Points p 
on e.id = p.entrants_id
inner join ZNOs z 
on z.id = p.zno_id
where z.subject <> 'Ukrainian language and literature'
order by e.lastname, e.firstname, e.surname, z.id;

select z.subject, p.point
from ZNOs z
right join Points p on z.id = p.zno_id
order by z.subject, p.point desc;