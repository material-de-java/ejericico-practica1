CREATE TABLE EMPRESAXYZ.Grupo (
  id INT PRIMARY KEY,
  nombre_oficina VARCHAR(100) NOT NULL,
  codigo_area INT
);


CREATE TABLE EMPRESAXYZ.Empleado (
  id INT PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  codigo INT,
  puesto VARCHAR(100) NOT NULL,
  sueldo DECIMAL(20,4) NOT NULL,
  id_superior INT
);


CREATE TABLE EMPRESAXYZ.EmpleadoxGrupo (
  id_em INT,
  id_gr INT,
  PRIMARY KEY (id_em, id_gr)
)

ALTER TABLE EMPRESAXYZ.Empleado ADD CONSTRAINT FK_e_id_sup FOREIGN KEY (id_superior) REFERENCES Empleado(id);
  
ALTER TABLE EMPRESAXYZ.EmpleadoxGrupo ADD CONSTRAINT FK_exg_id_em FOREIGN KEY (id_em) REFERENCES Empleado(id);

ALTER TABLE EMPRESAXYZ.EmpleadoxGrupo ADD CONSTRAINT FK_exg_id_gr FOREIGN KEY (id_gr) REFERENCES Grupo(id);



DROP SCHEMA `EMPRESAXYZ`;
CREATE SCHEMA `EMPRESAXYZ`;
DROP TABLE EMPRESAXYZ.Empleado CASCADE;
DROP TABLE EMPRESAXYZ.Grupo CASCADE;
DROP TABLE EMPRESAXYZ.EmpleadoxGrupo CASCADE;


select table_schema,
       table_name,
       constraint_name
from information_schema.table_constraints;



