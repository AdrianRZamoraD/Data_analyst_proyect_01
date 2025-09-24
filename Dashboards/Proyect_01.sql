use Proyect_01
go

ALTER TABLE rota
ADD CONSTRAINT FK_rotastaff
FOREIGN KEY(staff_id) REFERENCES staff(staff_id);

ALTER TABLE orders
ALTER COLUMN delivery varchar(10);

ALTER TABLE orders
DROP CONSTRAINT UC_orders_item_id

ALTER TABLE recipe
ADD CONSTRAINT UK_recipe_recipe_id
UNIQUE (recipe_id);

ALTER TABLE item
ADD CONSTRAINT UC_item_sku
UNIQUE (sku);

EXEC sp_rename 'dbo.staff.shift_id', 'staff_id', 'COLUMN';


use Proyect_01
go

ALTER TABLE recipe	
ADD CONSTRAINT FK_recipeingredient
FOREIGN KEY(ing_id) REFERENCES ingredient(ing_id);

TRUNCATE TABLE orders;