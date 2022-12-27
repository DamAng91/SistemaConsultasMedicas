USE sist_consultas;

#Ejercicio 1.A
SELECT P.cod_practica, P.descripcion, YEAR(C.fecha_consulta) AS anio, SUM(CP.cantidad) AS total_consultas, SUM(C.costo_total) AS precio_total
FROM Consultas_x_Practicas AS CP
INNER JOIN Consultas AS C ON 
CP.nro_consulta=C.nro_consulta
INNER JOIN Practica AS P ON
CP.cod_practica=P.cod_practica
WHERE C.fecha_consulta BETWEEN '2018-12-31' AND '2019-12-31'
GROUP BY P.cod_practica
ORDER BY P.cod_practica;

#Ejercicio 1.B 
SELECT L.cod_localidad, L.nombre_local AS localidad, SUM(C.costo_total) AS 'Costo Total'
FROM Localidades AS L
INNER JOIN Pacientes AS P ON
L.cod_localidad=P.cod_localidad
INNER JOIN Consultas AS C ON
C.cod_paciente=P.cod_paciente
WHERE DATE(C.fecha_consulta)= CURRENT_DATE()  
GROUP BY L.cod_localidad 
HAVING SUM(C.costo_total) > 5000
ORDER BY SUM(C.costo_total) DESC;

#Ejercicio 1.C
SELECT Paciente.cod_padre AS cod_padre, Padre.fecha_alta
FROM Pacientes AS Paciente
JOIN Pacientes AS Padre ON 
Paciente.cod_padre = Padre.cod_paciente
WHERE Paciente.edad < 18;

#Ejercicio 1.D
SELECT P.cod_practica, P.descripcion
FROM Practica AS P
WHERE P.cod_practica NOT IN( 
SELECT distinct P.cod_practica AS cod_practica
FROM Consultas_x_Practicas AS CP
JOIN Practica AS P ON
CP.cod_practica = P.cod_practica
JOIN Consultas AS C ON
CP.nro_consulta = C.nro_consulta
WHERE YEAR(C.fecha_consulta) = YEAR(CURRENT_DATE())
);

#Ejercicio 1.E 
SELECT M.legajo_medico, M.nombre, M.apellido
FROM Medicos AS M
WHERE M.legajo_medico NOT IN(
SELECT M.legajo_medico
FROM Consultas AS C
INNER JOIN Medicos AS M ON
C.legajo_medico = M.legajo_medico
INNER JOIN Pacientes AS P ON
C.cod_paciente = P.cod_paciente
WHERE P.nombre_apellido = 'Gaston Aizpurua'
);


