create schema Abit;

create table Entrants (
	id int(6) unsigned auto_increment primary key,
    lastname varchar(30) not null,
    firstname varchar(30) not null,
    surname varchar(30) not null,
    date_of_birth date,
    address varchar(100)
);

create table ZNOs (
	id int(6) unsigned auto_increment primary key,
    subject varchar(50)
);

create table Points (
	id int(6) unsigned auto_increment primary key,
    entrants_id int(6) unsigned,
    zno_id int(6) unsigned,
    constraint entrants_points foreign key (entrants_id) references Entrants(id),
    constraint znos_points foreign key (zno_id) references ZNOs(id),
    point int
);

create table PointsArchives (
	id int(6) unsigned auto_increment primary key,
    entrants_id int(6) unsigned,
    zno_id int(6) unsigned,
    foreign key (entrants_id) references Entrants(id),
    foreign key (zno_id) references ZNOs(id),
    point int,
    deletedAt TIMESTAMP DEFAULT NOW()
);

create table VNZs (
	id int(6) unsigned auto_increment primary key,
    name varchar(100),
    city varchar(15),
    address varchar(100)
);

CREATE TABLE VNZsChanges (
    id int(6) unsigned auto_increment primary key,
    vnzsId int(6),
    beforeAddress varchar(100),
    afterAddress varchar(100),
    changedAt timestamp not null default current_timestamp
);

create table Departaments (
	id int(6) unsigned auto_increment primary key,
    vnz_id int(6) unsigned,
	constraint vnz_departaments foreign key (vnz_id) references VNZs(id),
    name varchar(50),
    faculty varchar(50),
    program varchar(50)
);

create table Departaments_Entrants (
	id int(6) unsigned auto_increment primary key,
    entrants_id int(6) unsigned,
    departaments_id int(6) unsigned,
	foreign key (entrants_id) references Entrants(id),
	foreign key (departaments_id) references Departaments(id)
    
);
