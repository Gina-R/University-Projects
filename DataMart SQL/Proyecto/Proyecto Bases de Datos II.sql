--Creacion de la Base de Datos "StaginArea"
create DataBase StagingArea

create database BI

--Usamos la base de datos "StaginArea"
use StagingArea

--Confirmamos de que toda data se haya cargado de forma exitosa
select *
from Datos_Proyecto

--Se verifica que no hayan años distintos
select distinct Anno
from Datos_Proyecto

--Se verifica que no hayan colegios de procedencia distintos
select distinct Colegio_de_Procedencia
from Datos_Proyecto

--Se verifica que no hayan resoluciones distintas
select distinct Resolución
from Datos_Proyecto

--Se verifica que no hayan especialidades distintas
select distinct Especialidad
from Datos_Proyecto

--Se crea una tabla nueva para los colegios validos
alter table Datos_Proyecto
	add Colegio_Procedencia__Valido varchar(200)

update Datos_Proyecto
set Colegio_Procedencia__Valido = Colegio_de_Procedencia

select distinct Colegio_Procedencia__Valido
from Datos_Proyecto

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Colegio Alejandro Quesada'
--4

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Colegio Alejandro Quesada Ramírez'
--103

update Datos_Proyecto
set Colegio_Procedencia__Valido = 'Colegio Alejandro Quesada Ramírez'
where Colegio_de_Procedencia like 'Colegio Alejandro Quesada'

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Colegio Ing. Alejandro Quesada Ramírez'
--103

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Colegio Ing. Alejandro Ramírez Quesada'
--2

update Datos_Proyecto
set Colegio_Procedencia__Valido = 'Colegio Ing. Alejandro Quesada Ramírez'
where Colegio_de_Procedencia like 'Colegio Ing. Alejandro Ramírez Quesada'

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Liceo José Joaquin Vargas Calvo'
--1

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Liceo José Joaquín Vargas Calvo'
--58

update Datos_Proyecto
set Colegio_Procedencia__Valido = 'Liceo José Joaquín Vargas Calvo'
where Colegio_de_Procedencia like 'Liceo José Joaquin Vargas Calvo'

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Unidad Pedagògica de San Diego'
--15

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Unidad Pedagógica de San Diego'
--183

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Unidad Pedagógica de San Siego'
--4

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Unidad Pedagógica San Diego'
--190

update Datos_Proyecto
set Colegio_Procedencia__Valido = 'Unidad Pedagógica San Diego'
where Colegio_de_Procedencia like 'Unidad Pedagógica de San Siego'

update Datos_Proyecto
set Colegio_Procedencia__Valido = 'Unidad Pedagógica San Diego'
where Colegio_de_Procedencia like 'Unidad Pedagógica de San Diego'

update Datos_Proyecto
set Colegio_Procedencia__Valido = 'Unidad Pedagógica San Diego'
where Colegio_de_Procedencia like 'Unidad Pedagògica de San Diego'

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Liceo Nuevo de San Diego'
--86

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Liceo Nuevo San Diego'
--2

update Datos_Proyecto
set Colegio_Procedencia__Valido = 'Liceo Nuevo de San Diego'
where Colegio_de_Procedencia like 'Liceo Nuevo San Diego'

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Colegio Nocturno de La Unión'
--1

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Colegio Nocturno La Unión'
--2

update Datos_Proyecto
set Colegio_Procedencia__Valido = 'Colegio Nocturno La Unión'
where Colegio_de_Procedencia like 'Colegio Nocturno de La Unión'

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Colegio San Antonio de Padua'
--1

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Colegio San Antonio Padua'
--1

update Datos_Proyecto
set Colegio_Procedencia__Valido = 'Colegio San Antonio de Padua'
where Colegio_de_Procedencia like 'Colegio San Antonio Padua'

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Colegio Técnico Máximo Quesada'
--2

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'C. T. Máximo Quesada'
--1

update Datos_Proyecto
set Colegio_Procedencia__Valido = 'Colegio Técnico Máximo Quesada'
where Colegio_de_Procedencia like 'C. T. Máximo Quesada'

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Liceo Experimental Bilingüe José Figueres'
--1

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Liceo Experimental Bilingüe José Figueres Ferrer'
--1

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Liceo Experimental Bilingüe José Figureres Ferrer'
--1

update Datos_Proyecto
set Colegio_Procedencia__Valido = 'Liceo Experimental Bilingüe José Figueres Ferrer'
where Colegio_de_Procedencia like 'Liceo Experimental Bilingüe José Figueres'

update Datos_Proyecto
set Colegio_Procedencia__Valido = 'Liceo Experimental Bilingüe José Figueres Ferrer'
where Colegio_de_Procedencia like 'Liceo Experimental Bilingüe José Figureres Ferrer'

update Datos_Proyecto
set Colegio_Procedencia__Valido = 'Centro Educativo Saint Josselin Day School and College'
where Colegio_de_Procedencia like 'Centro Educativo Saint Josselin'

update Datos_Proyecto
set Colegio_Procedencia__Valido = 'Centro Educativo Saint Josselin Day School and College'
where Colegio_de_Procedencia like 'Saint Joselyn Day School and College'

update Datos_Proyecto
set Colegio_Procedencia__Valido = 'Centro Educativo Saint Josselin Day School and College'
where Colegio_de_Procedencia like 'Saint Josselin Day School'

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Sistema Educativa Bilingüe Virgen del Pilar'
--2

select count(*)
from Datos_Proyecto
where Colegio_de_Procedencia = 'Sistema Educativo Bilingüe Virgen del Pilar'
--6

update Datos_Proyecto
set Colegio_Procedencia__Valido = 'Sistema Educativo Bilingüe Virgen del Pilar'
where Colegio_de_Procedencia like 'Sistema Educativa Bilingüe Virgen del Pilar'

--**--**--**--**--**--**--
--Dimension Resolucion

select distinct (Resolución) Resolucion
Into BI.Dbo.Dim_Resolucion
From Datos_Proyecto

Alter table BI.Dbo.Dim_Resolucion
	Add ID_Resolucion Int Identity(1,1) Primary key;

select * 
from BI.dbo.Dim_Resolucion

--Dimension Anno

select distinct (Anno) Anno
Into BI.Dbo.Dim_Anno
From Datos_Proyecto

Alter table BI.Dbo.Dim_Anno
	Add ID_Anno Int Identity(1,1) Primary key;

select * 
from BI.dbo.Dim_Anno

--Dimension Colegio_Procedencia

select distinct (Colegio_Procedencia__Valido) Colegio_Procedencia__Valido
Into BI.Dbo.Dim_Colegio_Procedencia
From Datos_Proyecto

Alter table BI.Dbo.Dim_Colegio_Procedencia
	Add ID_Colegio_Procedencia Int Identity(1,1) Primary key;

select * 
from BI.dbo.Dim_Colegio_Procedencia

--Dimension Especialidad

select distinct (Especialidad) Especialidad
Into BI.Dbo.Dim_Especialidad
From Datos_Proyecto

Alter table BI.Dbo.Dim_Especialidad
	Add ID_Especialidad Int Identity(1,1) Primary key;

--Fac Tabla

Select DA.ID_Anno
	,DC.ID_Colegio_Procedencia
	,DR.ID_Resolucion
	,DS.ID_Especialidad
Into BI.Dbo.Fac_Proyecto
From Datos_Proyecto DE
Join BI.Dbo.Dim_Anno DA On DA.Anno = DE.Anno
Join BI.dbo.Dim_Colegio_Procedencia DC On DC.Colegio_Procedencia__Valido = DE.Colegio_Procedencia__Valido
Join BI.Dbo.Dim_Resolucion DR On DR.Resolucion = DE.Resolución
Join BI.dbo.Dim_Especialidad DS On DS.Especialidad = DE.Especialidad

Alter table BI.Dbo.Fac_Proyecto
	Add ID_Proyecto Int Identity(1,1) Primary key;