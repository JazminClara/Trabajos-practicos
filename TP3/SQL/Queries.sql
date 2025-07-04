use freedb_alfombras;

-- Consultas generales de tablas
select * from telas; -- aca habia telasbase y telasfondo
select * from pegamentos;
select * from hilados;
select * from mano_de_obra;
select * from presupuestos;

-- 1. Comprobar relaciones entre tablas presupuestos y telas
select p.id_presupuesto "ID Presupuesto", tb.id_tela "ID Tela Base", tb.uso "Uso", tf.id_tela "ID Tela Fondo", tf.uso "Uso"
from presupuestos p 
join telas tb on p.id_tela_base=tb.id_tela
join telas tf on p.id_tela_fondo=tf.id_tela
order by p.id_presupuesto;

-- 2. Todas las alfombras con insumos, trabajo y sus respectivos precios
select p.id_presupuesto "ID Presupuesto", tb.nombre "Tela base", tb.precio_metro "Precio", tf.nombre "Tela fondo", tf.precio_metro "Precio",
h.nombre "Hilado", h.precio_kilo "Precio", peg.nombre "Pegamento", peg.precio_kilo "Precio", m.nombre "Trabajo", m.precio_hora "Precio"
from presupuestos p 
join telas tb on p.id_tela_base=tb.id_tela
join telas tf on p.id_tela_fondo=tf.id_tela
join hilados h on p.id_hilado=h.id_hilado
join pegamentos peg on p.id_pegamento=peg.id_pegamento
join mano_de_obra m on p.id_trabajo=m.id_trabajo
order by p.id_presupuesto;

-- 3. Alfombras con hilado de acrílico
select p.id_presupuesto "Presupuesto", h.id_hilado "ID hilado", h.nombre "Tipo de hilado" 
from presupuestos p join hilados h on p.id_hilado = h.id_hilado
where nombre like '%acrilico%' order by p.id_presupuesto;

-- 4. Clientes con hilado y tela base de algodon
select p.nombre_cliente "Nombre cliente", p.id_presupuesto "ID alfombra", tb.nombre "Tipo de tela", h.nombre "Tipo de hilado" 
from presupuestos p join telas tb on p.id_tela_base=tb.id_tela join hilados h on p.id_hilado=h.id_hilado
where tb.nombre like "%algodon%" and h.nombre like "%algodon%";

-- 5. Cantidad de alfombras según tipo de hilado
select h.id_hilado "ID de hilado", nombre "Nombre", h.color "Color", count(h.id_hilado) Cantidad_de_alfombras 
from presupuestos p join hilados h on p.id_hilado=h.id_hilado
group by h.id_hilado
order by Cantidad_de_alfombras desc, h.nombre , h.color;

-- 6. Clientes con alfrombras de superficie mayor o igual a 5 m2
select id_presupuesto "ID alfombra", nombre_cliente "Nombre Cliente", round(ancho_alfombra*largo_alfombra,2) Superficie 
from presupuestos 
having Superficie >= 5
order by Superficie;

-- 7. Presupuesto con pegamento más costoso
select p.id_presupuesto "ID Presupuesto", p.nombre_cliente "Nombre Cliente", peg.nombre "Pegamento", peg.precio_kilo "Precio" 
from presupuestos p join pegamentos peg on p.id_pegamento=peg.id_pegamento
where peg.precio_kilo = (select max(precio_kilo) from pegamentos);
