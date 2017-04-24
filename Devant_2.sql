CREATE TABLE Menus (
    recipe_id int,
    recipe varchar(255),
    
);

/* A single Menu can have many recipes and therefore follows a 
one to many relationship */


CREATE TABLE recipe_details (
    recipe_id int,
    instructions varchar(255),
    ingredients varchar(255)

);

/* It is important that the recipe ID for any given recipe is the same
across the Database no matter how big */

ALTER TABLE recipe_details
ADD recipe_id int


/* 
(assuming your ids are ints) and then create the following foreign key:
*/

ALTER TABLE [dbo].ContactPerson
    ADD CONSTRAINT [FK_menus_recipe_details] 
    FOREIGN KEY (recipe_id)
    REFERENCES recipe_details