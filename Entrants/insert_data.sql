insert into Entrants (lastname, firstname, surname, date_of_birth, address)
values ('Horishna', 'Khrystyna', 'Olehivna', '2000-09-10', 'Konovaltsya 14/98');

insert into Entrants (lastname, firstname, surname, date_of_birth, address)
values ('Honchar', 'Marta', '', '2000-05-31', 'Ivana Franka 4/2');

insert into Entrants (lastname, firstname, surname, date_of_birth, address)
values ('Andriychuk', 'Oksana', 'Volodymyrivna', '2000-06-10', 'Lesi Ukrainky 4a');

insert into Entrants (lastname, firstname, surname, date_of_birth, address)
values ('Kovalchuk', 'Max', 'Victorovych', '1999-12-03', 'Stepana Bandery 82/40');

insert into Entrants (lastname, firstname, surname, date_of_birth, address)
values ('Boytsun', 'Denys', 'Yaroslavovych', '2000-10-12', 'Zluky 55/78');

insert into Entrants (lastname, firstname, surname, date_of_birth, address)
values ('Kravchuk', 'Olena', 'Olehivna', '1999-11-30', 'Konovaltsya 12/1');

insert into Entrants (lastname, firstname, surname, date_of_birth, address)
values ('Myhailyshyn', 'Lesia', 'Ivanivna', '2000-04-05', 'Franka 3/18');

insert into Entrants (lastname, firstname, surname, date_of_birth, address)
values ('Tarasova', 'Lidiya', 'Mykolaivna', '2000-01-01', 'Nebesnoi Sotni 23/6');

insert into Entrants (lastname, firstname, surname, date_of_birth, address)
values ('Shevchenko', 'Dmytro', 'Olehovych', '2000-06-01', 'Holovna 102/76');

insert into Entrants (lastname, firstname, surname, date_of_birth, address)
values ('Skoropad', 'Nazar', 'Ihorovych', '2000-10-29', 'Ruska 1/56');



insert into VNZs (name, city, address)
value ('CHNU', 'Chernivtsi', 'Kotsubynskoho 2');

insert into VNZs (name, city, address)
value ('KNU', 'Kyiv', 'Volodymyrska 60');

insert into VNZs (name, city, address)
value ('Lviv Polytechnic National University', 'Lviv', 'Stepana Bandery 12');

insert into VNZs (name, city, address)
value ('LNU', 'Lviv', 'Universytetska 1');

insert into VNZs (name, city, address)
value ('KHNU', 'Kharkiv', 'maidan Svobody 4');

insert into VNZs (name, city, address)
value ('NMU', 'Kyiv', 'bulvar Tarasa Shevchenka 13');

insert into VNZs (name, city, address)
value ('TSMU', 'Ternopil', 'maidan Voli 1');

insert into VNZs (name, city, address)
value ('ONU', 'Odesa', 'Dvoryanska 2');

insert into VNZs (name, city, address)
value ('TNEU', 'Ternopil', 'Ruska 56');

insert into VNZs (name, city, address)
value ('KNUTD', 'Kyiv', 'Nemyrova-Danchenka 2');



insert into Departaments (vnz_id, name, faculty, program)
value ('1', 'Computer Sciense', 'Mathematic and Informatic', 'System analisys');

insert into Departaments (vnz_id, name, faculty, program)
value ('2', 'Marketing', 'Econom', 'Marketing');

insert into Departaments (vnz_id, name, faculty, program)
value ('3', 'Foreign Language', 'Social Sciense', 'Foreign Language');

insert into Departaments (vnz_id, name, faculty, program)
value ('4', 'Marketing', 'Econom', 'Marketing');

insert into Departaments (vnz_id, name, faculty, program)
value ('5', 'Organic Chemistry', 'Chemistry', 'Pharmaceutical Chemistry');

insert into Departaments (vnz_id, name, faculty, program)
value ('6', 'Surgery', 'Faculty 1', 'Surgery');

insert into Departaments (vnz_id, name, faculty, program)
value ('7', 'Anatomy', 'Medical', 'Normal Anatomy');

insert into Departaments (vnz_id, name, faculty, program)
value ('8', 'Mathematical Analisys', 'Math, Fisics and IT', 'Mathematical Analisys');

insert into Departaments (vnz_id, name, faculty, program)
value ('9', 'Computer Sciense', 'Computer Information Technology', 'Software Engineering');

insert into Departaments (vnz_id, name, faculty, program)
value ('10', 'Managment', 'Economic and Business', 'Managment');

insert into Departaments (vnz_id, name, faculty, program)
value ('1', 'International Economy', 'Econom', 'international  Economic Relations');

insert into Departaments (vnz_id, name, faculty, program)
value ('1', 'History of Ukraine', 'Historical', 'History and Archeology');

insert into Departaments (vnz_id, name, faculty, program)
value ('2', 'Foreign Languages', 'Law', 'Foreign Languages');

insert into Departaments (vnz_id, name, faculty, program)
value ('4', 'Biochemistry', 'Biological', 'Biochemistry');

insert into Departaments (vnz_id, name, faculty, program)
value ('4', 'History of Ukraine', 'Historical', 'Contemporary History of Ukraine');

insert into Departaments (vnz_id, name, faculty, program)
value ('5', 'Economic Theory', 'Economic', 'Economic Theory');

insert into Departaments (vnz_id, name, faculty, program)
value ('8', 'Biochemistry', 'Biological', 'Biochemistry');

insert into Departaments (vnz_id, name, faculty, program)
value ('8', 'History of Ukraine', 'History and Philosophy', 'Contemporary History of Ukraine');



insert into ZNOs (subject)
value ('Ukrainian language and literature');

insert into ZNOs (subject)
value ('Mathematic');

insert into ZNOs (subject)
value ('History of Ukraine');

insert into ZNOs (subject)
value ('English language');

insert into ZNOs (subject)
value ('Chemistry');

insert into ZNOs (subject)
value ('Biology');

insert into ZNOs (subject)
value ('Geography');

insert into ZNOs (subject)
value ('Physics');



insert into Points (entrants_id, zno_id, point)
values ('1', '1', '200');

insert into Points (entrants_id, zno_id, point)
values ('1', '2', '193');

insert into Points (entrants_id, zno_id, point)
values ('1', '4', '187');

insert into Points (entrants_id, zno_id, point)
values ('2', '1', '165');

insert into Points (entrants_id, zno_id, point)
values ('2', '2', '178');

insert into Points (entrants_id, zno_id, point)
values ('2', '3', '198');

insert into Points (entrants_id, zno_id, point)
values ('3', '1', '198');

insert into Points (entrants_id, zno_id, point)
values ('3', '3', '187');

insert into Points (entrants_id, zno_id, point)
values ('3', '7', '145');

insert into Points (entrants_id, zno_id, point)
values ('4', '1', '200');

insert into Points (entrants_id, zno_id, point)
values ('4', '5', '198');

insert into Points (entrants_id, zno_id, point)
values ('4', '6', '198');

insert into Points (entrants_id, zno_id, point)
values ('5', '1', '132');

insert into Points (entrants_id, zno_id, point)
values ('5', '3', '154');

insert into Points (entrants_id, zno_id, point)
values ('5', '4', '112');

insert into Points (entrants_id, zno_id, point)
values ('6', '1', '176');

insert into Points (entrants_id, zno_id, point)
values ('6', '2', '187');

insert into Points (entrants_id, zno_id, point)
values ('6', '4', '145');

insert into Points (entrants_id, zno_id, point)
values ('7', '1', '187');

insert into Points (entrants_id, zno_id, point)
values ('7', '5', '199');

insert into Points (entrants_id, zno_id, point)
values ('7', '6', '165');

insert into Points (entrants_id, zno_id, point)
values ('8', '1', '198');

insert into Points (entrants_id, zno_id, point)
values ('8', '5', '187');

insert into Points (entrants_id, zno_id, point)
values ('8', '6', '145');

insert into Points (entrants_id, zno_id, point)
values ('9', '1', '176');

insert into Points (entrants_id, zno_id, point)
values ('9', '3', '187');

insert into Points (entrants_id, zno_id, point)
values ('9', '4', '200');

insert into Points (entrants_id, zno_id, point)
values ('10', '1', '143');

insert into Points (entrants_id, zno_id, point)
values ('10', '7', '101');

insert into Points (entrants_id, zno_id, point)
values ('10', '8', '165');



insert into Departaments_Entrants (entrants_id, departaments_id)
values ('1', '1');

insert into Departaments_Entrants (entrants_id, departaments_id)
values ('1', '8');

insert into Departaments_Entrants (entrants_id, departaments_id)
values ('1', '9');

insert into Departaments_Entrants (entrants_id, departaments_id)
values ('2', '2');

insert into Departaments_Entrants (entrants_id, departaments_id)
values ('3', '10');

insert into Departaments_Entrants (entrants_id, departaments_id)
values ('4', '6');

insert into Departaments_Entrants (entrants_id, departaments_id)
values ('4', '7');

insert into Departaments_Entrants (entrants_id, departaments_id)
values ('5', '4');

insert into Departaments_Entrants (entrants_id, departaments_id)
values ('6', '3');

insert into Departaments_Entrants (entrants_id, departaments_id)
values ('6', '8');

insert into Departaments_Entrants (entrants_id, departaments_id)
values ('7', '5');

insert into Departaments_Entrants (entrants_id, departaments_id)
values ('8', '5');

insert into Departaments_Entrants (entrants_id, departaments_id)
values ('9', '10');

insert into Departaments_Entrants (entrants_id, departaments_id)
values ('10', '1');

insert into Departaments_Entrants (entrants_id, departaments_id)
values ('10', '8');

insert into Departaments_Entrants (entrants_id, departaments_id)
values ('3', '11');

insert into Departaments_Entrants (entrants_id, departaments_id)
values ('2', '12');

insert into Departaments_Entrants (entrants_id, departaments_id)
values ('9', '13');

insert into Departaments_Entrants (entrants_id, departaments_id)
values ('4', '15');

insert into Departaments_Entrants (entrants_id, departaments_id)
values ('5', '16');

insert into Departaments_Entrants (entrants_id, departaments_id)
values ('3', '18');

