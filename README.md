# Steps to finish the project. (We need to write the repo as a tutorial)

1. Describe the database and it's purpose
2. Describe the tool we will use, PostgreSQL.
3. Mention the DB components (scientific_name, family, location, height, DAP, etc)
4. Describe the steps to normalize the database and how to convert it to the normal form. 
5. Show the entity relationship diagram (find how to do this ER in postgresql, link: https://www.youtube.com/watch?v=o23LBJ-9jsU)
6. Empty table creation, here we show how to create all the empty tables we are going to use in this project, also showing the code and datatypes.
7. Adding relationships between tables (Foreign keys)
8. Insert massivelly all the data, using the command **\i**. 

## Database Description 
Here in this project, we will create a database which objective is store data from plant monitoring. 

**For example:** suppose each month we go out and record the height and trunk diameter of some plants we would like to monitor frequently, so this database will help us to organizatelly store the data; additionally this database will have information about the scientific identification, location and origin of every plant

## Tools description

## Database components

## Database Normalization
In this section we will make an excercise where we normalize an initial table which has data about 2 monitorings and 2 plant species; this table is unorganized because does not follows the normal forms, so we will go step by step showing how to correctly organize this information. 

#### Table 1. Unorganized table.
![](images/Unorganized_table.PNG)

In the previus table we see that there are some columns that repeat, like **monitoring_date_1** and **monitoring_date_2** or **height_1** and **height_2**. This can't happen because it violates the normal forms rules; so the next table fixes this issue to produce a table in the first normal form. 

#### Table 2. first normal form table.
![](images/first_normal_form_table.PNG)

This table does not have repeated columns, so we have now a table in the first normal form.

To transform this table into the second normal form, we must ensure the table has a single column primary key, in this case our table does not satisfies this condition, because the column **plant_id** is not **UNIQUE**. To do this, we think it's a good idea to create 2 tables, which have THE SAME INFORMATION AS THE Table 2, but with the information organized differently, also these two tables has each one a UNIQUE primary key. 

#### Table 3. second normal form tables. 
![](images/second_normal_form_tables.PNG)

These two tables satisfy the second normal form.

To transform these tables into the third normal form, we must separate the entities that do not have relations 1:1 (one-to-one relations). 

**for example** the relationship between plant and scientific_name is not 1:1, because different individual plants can have the same scientific_name, so the relationship here is 1:N; the same happens for family, location, sower and origin. 

**Something special** happens with the relationship between plant and flower_color, because one individual plant can have different colors in its flower and one color can be in different flower species, we can say that this relationship is N:N (many-to-many relationship). So to correctly relationate these two entities, we need a transitory or intermediate table, in this case we named it: **'plant_flower_color'**, this is a simple table which has a primary key and the information of which plant_id has which color.  

#### Table 4. third normal form tables and 'intermediate' table
![](images/third_normal_form_tables.PNG)








