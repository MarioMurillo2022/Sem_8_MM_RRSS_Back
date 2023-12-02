-- Active: 1697072377566@@localhost@5432@dbsem8db23rrss

create table
    tbl_role (
        id SERIAL PRIMARY key,
        name_role varchar(100),
        is_active BOOLEAN DEFAULT true,
        created_date TIMESTAMP DEFAULT current_timestamp,
        deleted_date TIMESTAMP,
        update_date TIMESTAMP
    );

insert into tbl_role (name_role) values ('Admin'), ('Client');

select * from tbl_role;

create table
    tbl_users (
        user_name varchar(30) PRIMARY key,
        email VARCHAR(70) UNIQUE,
        pass VARCHAR(30),
        profile_picture bytea,
        id_role int REFERENCES tbl_role(id),
        is_active BOOLEAN DEFAULT true,
        created_date TIMESTAMP DEFAULT current_timestamp,
        deleted_date TIMESTAMP,
        update_date TIMESTAMP
    );

INSERT INTO
    tbl_users (user_name, email, pass, id_role)
values (
        'murillo23',
        'murillo@unitec.edu',
        'mjmz23$',
        1
    ), (
        'alumno01',
        'alumno@unitec.edu',
        'mjmz24$',
        2
    );

select *
from tbl_users
where
    user_name = 'murillo23'
    and pass = 'mjmz23$'
    and is_active = true;