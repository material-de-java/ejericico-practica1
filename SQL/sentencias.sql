CREATE TABLE EMPRESAXYZ.Empleado (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(255) NOT NULL,
  codigo INT,
  puesto VARCHAR(100) NOT NULL,
  sueldo DECIMAL(20,4) NOT NULL,
  id_jefe INT,
  id_grupo INT
);


CREATE TABLE EMPRESAXYZ.Grupo (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre_oficina VARCHAR(100) NOT NULL,
  codigo_area INT
);


CREATE TABLE EMPRESAXYZ.EmpleadoxGrupo (
  # id_em INT,
  # id_gr INT,
  # PRIMARY KEY (id_em, id_gr)
)

ALTER TABLE EMPRESAXYZ.Empleado ADD CONSTRAINT FK_e_id_jef FOREIGN KEY (id_jefe) REFERENCES Empleado(id);
ALTER TABLE EMPRESAXYZ.Empleado ADD CONSTRAINT FK_e_id_gru FOREIGN KEY (id_grupo) REFERENCES Grupo(id);
  
# ALTER TABLE EMPRESAXYZ.EmpleadoxGrupo ADD CONSTRAINT FK_exg_id_em FOREIGN KEY (id_em) REFERENCES Empleado(id);

# ALTER TABLE EMPRESAXYZ.EmpleadoxGrupo ADD CONSTRAINT FK_exg_id_gr FOREIGN KEY (id_gr) REFERENCES Grupo(id);



DROP SCHEMA `EMPRESAXYZ`;
CREATE SCHEMA `EMPRESAXYZ`;
DROP TABLE EMPRESAXYZ.Empleado CASCADE;
DROP TABLE EMPRESAXYZ.Grupo CASCADE;
DROP TABLE EMPRESAXYZ.EmpleadoxGrupo CASCADE;


select table_schema,
       table_name,
       constraint_name
from information_schema.table_constraints;



