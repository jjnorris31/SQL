/* Problema
* Enunciado: Sean las siguientes tablas de una base de datos
* Empleado (nDIEmp, nomEmp, sexEmp, fecNac, fecIncorporacion, salEmp, comis,
* codSuc, jefeDI, cargo, nroDepto)
* Departamento (codDepto, nombreDpto, ciudad, director)
*/

-- Obtener los datos completos de los empleados:

SELECT * FROM empleado;

-- Obtener los datos completos de los departamentos:
 
SELECT * FROM departamento;
 
 -- Obtener los datos de los empleados con cargo 'Secretaria':

SELECT * FROM empleado WHERE cargoE IS 'Secretaria';

-- Obtener el nombre y salario de los empleados:

SELECT nomEmp, salEmp FROM empleado;

--Obtener los datos de los empleados vendedores, ordenado por nombre:

SELECT * FROM empleado WHERE cargoE IS 'Vendedor' ORDER BY nomEmp;

-- Listar el nombre de los departamentos:

SELECT nombreDpto FROM departamento;

-- Listar el nombre de los departamentos, ordenado por nombre:

SELECT nombreDpto FROM departamento ORDER BY nombreDpto;


-- Listar el nombre de los departamentos, ordenado por ciudad:

SELECT nombreDpto FROM departamento ORDER BY ciudad;

-- Listar el nombre de los departamentos, ordenado por ciudad, en orden inverso:

SELECT nombreDpto FROM departamento ORDER BY ciudad DESC;

-- Obtener el nombre y cargo de todos los empleados, ordenado por salario.

SELECT nomEmp, cargoE FROM empleado ORDER BY salEmp;

-- Obtener el nombre y cargo de todos los empleados, ordenado por cargo y por salario

SELECT nomEmp, cargoE FROM empleado ORDER BY cargoE, salEmp;

-- Obtener el nombre y cargo de todos los empleados, en orden inverso por cargo

SELECT nomEmp, cargoE FROM empleado ORDER BY cargoE DESC;
