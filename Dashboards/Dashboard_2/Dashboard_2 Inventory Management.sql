use Proyect_01
go

SELECT
	o.item_id,
	i.sku,
	i.item_name,
	r.ing_id,
	ing.ing_name,
	r.quanty AS recipe_quantity,
	sum(o.quanty) AS order_quantity
FROM 
	orders o
	LEFT JOIN item i ON o.item_id = i.item_id
	LEFT JOIN recipe r ON i.sku = r.recipe_id
	LEFT JOIN ingredient ing ON ing.ing_id = r.ing_id
GROUP BY
	o.item_id, 
	i.sku, 
	i.item_name,
	r.ing_id,
	r.quanty,
	ing.ing_name