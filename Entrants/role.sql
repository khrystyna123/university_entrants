create role Rector;
create role Secretar;
create role Entrant;

grant all on University to Rector;

grant all on Departaments to Secretar;
grant select on Entrants to Secretar;
grant select, update (point) on Points to Secretar;

grant select on University to Entrant;
grant select on Application to Entrant;

create user Rector1, Rector2;
create user Secretar1, Secretar2, Secretar3;
create user Entrant1;

grant Rector to Rector1 with admin option;
grant Rector to Rector2 with admin option;
grant Secretar to Secretar1 with admin option;
grant Secretar to Secretar2 with admin option;
grant Secretar to Secretar3 with admin option;
grant Entrant to Entrant1 with admin option;