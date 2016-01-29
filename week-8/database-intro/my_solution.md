1. Select all data for all states. select * from states;

2. Select all data for all regions. select * from regions;

3. Select the state_name and population for all states. select state_name, population from states;

4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top. select state_name, population from states order by population desc;

5. Select the state_name for the states in region 7. select state_name from states where region_id = 7;

6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense. select state_name, population_density from states where population_density > 50 order by population_density asc;

7. Select the state_name for states with a population between 1 million and 1.5 million people. select state_name from states where population between 1000000 and 1500000;

8. Select the state_name and region_id for states ordered by region in ascending order. select state_name, region_id from states order by region_id asc;

9. Select the region_name for the regions with "Central" in the name. select region_name from regions where region_name like '%Central%';

10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables). select regions.region_name, states.state_name from regions join states on regions.id = states.region_id order by states.region_id asc;

![Cher's Schema](https://github.com/Petey101/phase0/blob/master/week-8/database-intro/outfitSchema.PNG)

Reflection

What are databases for?

Databases are used to store large amounts of information. They should be easy to use and access.

What is a one-to-many relationship?

A one-to-many relationship is when a table can be refrenced multiple times by another. An example would be a table with people and another table with outfits. One person can have multiple outfits, making the table with people the one and the outfits the many.

What is a primary key? What is a foreign key? How can you determine which is which?

A primary key is a unique value that each table has for its many elements. A foreign key links to the primary key of another table. Foreign keys do not have to be unique.

How can you select information out of a SQL database? What are some general guidelines for that?

Using certain keywords allows you to select information out of a SQL database.
SELECT lets the console know what you want. FROM lets the console know from where. Those are the two important ones with other keywords such as ORDER BY, to choose how you want to display the database and BETWEEN to only take certain values to return.
