/* Problema
* Enunciado: Sean las siguientes tablas de una base de datos
* Empleado (nDIEmp, nomEmp, sexEmp, fecNac, fecIncorporacion, salEmp, comis,
* codSuc, jefeDI, cargo, nroDepto)
* Departamento (codDepto, nombreDpto, ciudad, director)
*/

-- Obtener los datos completos de los empleados:

SELECT * 
FROM empleado;

-- Obtener los datos completos de los departamentos:
 
SELECT * 
FROM departamento;
 
 -- Obtener los datos de los empleados con cargo 'Secretaria':

SELECT * 
FROM empleado 
WHERE cargoE IS 'Secretaria';

-- Obtener el nombre y salario de los empleados:

SELECT nomEmp, salEmp 
FROM empleado;

--Obtener los datos de los empleados vendedores, ordenado por nombre:

SELECT * FROM empleado 
WHERE cargoE IS 'Vendedor'
 ORDER BY nomEmp;

-- Listar el nombre de los departamentos:

SELECT nombreDpto
 FROM departamento;

-- Listar el nombre de los departamentos, ordenado por nombre:

SELECT nombreDpto 
FROM departamento 
ORDER BY nombreDpto;

-- Listar el nombre de los departamentos, ordenado por ciudad:

SELECT nombreDpto 
FROM departamento 
ORDER BY ciudad;

-- Listar el nombre de los departamentos, ordenado por ciudad, en orden inverso:

SELECT nombreDpto 
FROM departamento 
ORDER BY ciudad DESC;

-- Obtener el nombre y cargo de todos los empleados, ordenado por salario.

SELECT nomEmp, cargoE 
FROM empleado 
ORDER BY salEmp;

-- Obtener el nombre y cargo de todos los empleados, ordenado por cargo y por salario

SELECT nomEmp, cargoE 
FROM empleado 
ORDER BY cargoE, salEmp;

-- Obtener el nombre y cargo de todos los empleados, en orden inverso por cargo

SELECT nomEmp, cargoE 
FROM empleado 
ORDER BY cargoE DESC;

-- Listar los salarios y comisiones de los empleados del departamento 2000

SELECT salEmp, comisionE 
FROM empleado 
WHERE codDepto IS 2000;

-- Listar los salarios y comisiones de los empleados del departamento 2000, ordenado por comisión

SELECT salEmp, comisionE 
FROM empleado 
WHERE codDepto IS 2000 
ORDER BY comisionE;

-- Listar todas las comisiones

SELECT comisionE
FROM empleado;

-- Listar las comisiones que sean diferentes, ordenada por valor

SELECT DISTINCT comisionE 
FROM empleado;

-- Listar los diferentes salarios

SELECT DISTINCT salEmp 
FROM empleado;

-- Obtener el valor total a pagar que resulta de sumar a los empleados del departamento 3000 una bonificación de $500.000, en orden alfabético del empleado

SELECT nomEmp, salEmp + 500 
FROM empleado 
WHERE codDepto IS 3000 
ORDER BY nomEmp;

-- Obtener la lista de los empleados que ganan una comisión superior a su sueldo.

SELECT * FROM empleado 
WHERE comisionE > salEmp;

-- Listar los empleados cuya comisión es menor o igual que el 30% de su sueldo.

SELECT * 
FROM empleado 
WHERE comisionE <= .30 * salEmp;

-- Elabore un listado donde para cada fila, figure ‘Nombre’ y ‘Cargo’ antes del valor respectivo para cada empleado

SELECT nomEmp AS "Nombre", cargoE AS "Cargo"
FROM empleado;

-- Hallar el salario y la comisión de aquellos empleados cuyo número de documento de identidad es superior al '19.709.802'

SELECT salEmp, comisionE 
FROM EMPLEADO 
WHERE nDIEmp > '19.709.802';

-- Listar los empleados cuyo salario es menor o igual que el 40% de su comisión

SELECT * 
FROM empleado 
WHERE salEmp <= .40 * comisionE;

-- Divida los empleados, generando un grupo cuyo nombre inicie por la letra J y termine en la letra Z.

SELECT * 
FROM empleado 
WHERE nomEmp 
LIKE 'J%Z';

-- Liste estos empleados y su cargo por orden alfabético.

/* Listar el salario, la comisión, el salario total (salario + comisión), documento de identidad del
 * empleado y nombre, de aquellos empleados que tienen comisión superior a $1.000.000, ordenar el
 * informe por el número del documento de identidad
 */
 
SELECT salEmp, comisionE, (salEmp + comisionE) AS "Salario total", nDIEmp, nomEmp 
FROM empleado 
WHERE comisionE > 1000000
ORDER BY nDIEmp;


-- Obtener un listado similar al anterior, pero de aquellos empleados que NO tienen comisión

SELECT salEmp, comisionE, (salEmp + comisionE) AS "Salario total", nDIEmp, nomEmp 
FROM empleado 
WHERE comisionE IS 0
ORDER BY nDIEmp;

/* Hallar el nombre de los empleados que tienen un salario superior a $1.000.000, y tienen como jefe al
 * empleado con documento de identidad '31.840.269'
 */
 
SELECT nomEmp
FROM empleado
WHERE salEmp > 1000000 AND jefeID = '31.840.269';

-- Hallar el conjunto complementario del resultado del ejercicio anterior.

SELECT nomEmp
FROM empleado
WHERE salEmp < 1000000 AND jefeID IS NOT '31.840.269';

-- Hallar los empleados cuyo nombre no contiene la cadena “MA”

SELECT *
FROM empleado
WHERE nomEmp NOT LIKE '%MA%';

-- Obtener los nombres de los departamentos que no sean “Ventas” ni “Investigación” NI ‘MANTENIMIENTO’, ordenados por ciudad.

SELECT *
FROM departamento
WHERE nombreDpto IS NOT "VENTAS" AND nombreDpto IS NOT "INVESTIGACIÓN" AND nombreDpto IS NOT "MANTENIMIENTO";
 

 
31. Obtener el nombre y el departamento de los empleados con cargo 'Secretaria' o 'Vendedor', que
no trabajan en el departamento de “PRODUCCION”, cuyo salario es superior a $1.000.000,
ordenados por fecha de incorporación.
32. Obtener información de los empleados cuyo nombre tiene exactamente 11 caracteres
33. Obtener información de los empleados cuyo nombre tiene al menos 11 caracteres
34. Listar los datos de los empleados cuyo nombre inicia por la letra 'M', su salario es mayor a $800.000
o reciben comisión y trabajan para el departamento de 'VENTAS'
35. Obtener los nombres, salarios y comisiones de los empleados que reciben un salario situado entre la
mitad de la comisión la propia comisión
36. Suponga que la empresa va a aplicar un reajuste salarial del 7%. Listar los nombres de los empleados, su
salario actual y su nuevo salario, indicando para cada uno de ellos si tiene o no comisión
37. Obtener la información disponible del empleado cuyo número de documento de identidad sea:
'31.178.144', '16.759.060', '1.751.219', '768.782', '737.689', '19.709.802', '31.174.099', '1.130.782'
38. Entregar un listado de todos los empleados ordenado por su departamento, y alfabético dentro del
departamento.
39. Entregar el salario más alto de la empresa.
40. Entregar el total a pagar por comisiones, y el número de empleados que las reciben.
41. Entregar el nombre del último empleado de la lista por orden alfabético.
42. Hallar el salario más alto, el más bajo y la diferencia entre ellos.
43. Conocido el resultado anterior, entregar el nombre de los empleados que reciben el salario más alto
y más bajo. Cuanto suman estos salarios?
44. Entregar el número de empleados de sexo femenino y de sexo masculino, por departamento.
45. Hallar el salario promedio por departamento.
46. Hallar el salario promedio por departamento, considerando aquellos empleados cuyo salario supera
$900.000, y aquellos con salarios inferiores a $575.000. Entregar el código y el nombre del
departamento.
47. Entregar la lista de los empleados cuyo salario es mayor o igual que el promedio de la empresa.
Ordenarlo por departamento.
48. Hallar los departamentos que tienen más de tres (3) empleados. Entregar el número de empleados de
esos departamentos.
49. Obtener la lista de empleados jefes, que tienen al menos un empleado a su cargo. Ordene el informe
inversamente por el nombre.
50. Hallar los departamentos que no tienen empleados
51. Entregar un reporte con el numero de cargos en cada departamento y cual es el promedio de salario
de cada uno. Indique el nombre del departamento en el resultado.
52. Entregar el nombre del departamento cuya suma de salarios sea la más alta, indicando el valor de la
suma.
53. Entregar un reporte con el código y nombre de cada jefe, junto al número de empleados que dirige.
Puede haber empleados que no tengan supervisores, para esto se indicará solamente el numero de
ellos dejando los valores restantes en NULL.
