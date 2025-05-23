-- 1 Nombre completo (CONCAT(nombre, ' ', apellido)) como nombre_completo
SELECT
  CONCAT(nombre, ' ', apellido) AS nombre_completo
FROM empleados;

-- 2 Longitud total del nombre completo (LENGTH(CONCAT(...))) como longitud_nombre
SELECT
	nombre, apellido,
	LENGTH(CONCAT(nombre, apellido))           AS longitud_nombre
FROM empleados;

-- 3 El nombre del empleado todo en mayúsculas (UPPER(nombre)) como nombre_mayusculas
SELECT 
	UPPER(nombre)  AS nombre_mayusculas
FROM empleados;


-- 4 El dominio de correo electrónico (parte después del @) usando SUBSTRING_INDEX() como dominio_correo
SELECT 
    SUBSTRING(correo, LOCATE('@', correo) + 1) AS dominio_correo
FROM empleados;


-- Consulta completa 
SELECT
  CONCAT(nombre, ' ', apellido) AS nombre_completo,
  LENGTH(CONCAT(nombre, apellido)) AS longitud_nombre,
  UPPER(nombre) AS nombre_mayusculas,
  SUBSTRING(correo, LOCATE('@', correo) + 1) AS dominio_correo
FROM empleados;
