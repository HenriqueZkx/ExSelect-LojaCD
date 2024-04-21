create database LojaCDExBD
use LojaCDExBD

create table Cds(
CodigoCd int primary key,
Nome_Cd varchar(50) not null,
DataCompra Date not null,
ValorPago decimal(8,2) not null,
LocalCompra varchar(40) not null,
Album varchar(3) not null
)

insert into Cds values (1, 'Never', '16/04/2024', 115.00, 'Loja de Disco Principal', 'Sim');
insert into Cds values (2, 'California Love', '16/04/2024', 125.00, 'Loja de Disco Principal', 'Sim');
insert into Cds values (3, 'Run', '16/04/2024', 135.00, 'Loja de Disco Principal', 'Não');
insert into Cds values (4, 'Hotel in New York', '16/04/2024', 145.00, 'Loja de Disco Principal', 'Sim');
insert into Cds values (5, 'Boutique', '16/04/2024', 105.00, 'Loja de Disco Principal', 'Não');

select * from Cds
select Nome_cd, DataCompra from Cds order by Nome_Cd
select Nome_cd, DataCompra from Cds order by DataCompra desc
select Nome_cd, DataCompra, ValorPago from Cds order by ValorPago desc
select sum(ValorPago) as TotalGasto from Cds
select Nome_Cd from Cds where LocalCompra = 'Submarino'
select * from Cds where Album = 'Sim'
select avg(ValorPago) as MediaPrecosCD from Cds

create table Musicas(
CodigoCd int
foreign key (CodigoCd) references Cds,
Numero_Musica Int,
Nome_Musica varchar(50) not null,
Artista varchar (50) not null,
Tempo varchar (15) not null
)

insert into Musicas values (1, '1', 'Back', 'Marieh Blonde', '0:3:42');
insert into Musicas values (1, '2', 'The Payback', 'Marieh Blonde', '0:4:48');
insert into Musicas values (1, '3', 'Beat', 'Marieh Blonde', '0:3:18');
insert into Musicas values (2, '1', 'Natural', 'José Pedro', '0:5:36');
insert into Musicas values (2, '2', 'Get Up', 'José Pedro', '0:4:01');
insert into Musicas values (2, '3', 'Hey Marieh', 'José Pedro', '0:2:56');
insert into Musicas values (3, '1', 'Rock', 'Jimi Dylan', '0:6:46');
insert into Musicas values (3, '2', 'Solo Guitar', 'Jimi Dylan', '0:8:49');
insert into Musicas values (3, '3', 'This is EUA', 'Jimi Dylan', '0:3:22');
insert into Musicas values (4, '1', 'I love You', 'The Eagles', '0:4:51');
insert into Musicas values (4, '2', 'Two Loves', 'The Eagles', '0:6:24');
insert into Musicas values (4, '3', 'Red Heart', 'The Eagles', '0:3:55');
insert into Musicas values (5, '1', 'Bloom', 'The One', '0:3:33');
insert into Musicas values (5, '2', 'Dance', 'The One', '0:4:24');
insert into Musicas values (5, '3', 'The Dark', 'The One', '0:5:15');

select * from Musicas where CodigoCd = 1
select Nome_Musica, Artista from Musicas
select Numero_Musica, Nome_Musica, Tempo from Musicas where CodigoCd = 5 order by Numero_Musica
select count(*) as QtddMusicas from Musicas
select Nome_Musica from Musicas where Artista = 'José Pedro'
select Nome_Musica from Musicas order by Nome_Musica