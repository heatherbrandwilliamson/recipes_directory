RECIPES_DIRECTORY Model and Repository Classes Design Recipe

## 1. Design and create the Table

As a food lover,
So I can stay organised and decide what to cook,
I'd like to keep a list of all my recipes with their names.

As a food lover,
So I can stay organised and decide what to cook,
I'd like to keep the average cooking time (in minutes) for each recipe.

As a food lover,
So I can stay organised and decide what to cook,
I'd like to give a rating to each of the recipes (from 1 to 5).


Nouns:

name, cooking_time, rating 

# 2. Table name & columns 

Name of the table (always plural): recipes 

Column names: name, cooking_time, rating 

# 3. Column types 

# EXAMPLE:

id: SERIAL
name: text
cooking_time: int
rating: int 

# 4. Write the SQL 


CREATE TABLE recipes (
  id SERIAL PRIMARY KEY,
  name text,
  cooking_time int,
  rating int
);


## 2. Create Test SQL seeds

-- EXAMPLE
-- (file: spec/seeds_{table_name}.sql)

-- Write your SQL seed here. 

-- First, you'd need to truncate the table - this is so our table is emptied between each test run,
-- so we can start with a fresh state.
-- (RESTART IDENTITY resets the primary key)

TRUNCATE TABLE students RESTART IDENTITY; -- replace with your own table name.

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.

INSERT INTO students (name, cohort_name) VALUES ('David', 'April 2022');
INSERT INTO students (name, cohort_name) VALUES ('Anna', 'May 2022');

### 3. Define the class names 

Usually, the Model class name will be the capitalised table name (single instead of plural). The same name is then suffixed by Repository for the Repository class name.

# EXAMPLE
# Table name: recipes

# Model class
# (in lib/recipes.rb)
class Recipes
end

# Repository class
# (in lib/recipes_repository.rb)
class RecipesRepository
end



6. Write Test Examples

Test for all method 
# 1
# Get all recipes

repo = RecipeRepository.new
recipes = repo.all

recipes.length  => 2
recipes.first.id =>   1
recipes.first.name  => 'Katsu Curry'
recipes.first.cooking_time =>  35


Test for find method 
# 2 
# return a single recipe 

repo = RecipeRepository.new
recipes = repo.find(1)

recipes.first.id =>   1
recipes.first.name  => 'Katsu Curry'
recipes.first.cooking_time =>  25

recipes = repo.find(2)

recipes.first.id =>   2
recipes.first.name  => 'Mushroom Risotto'
recipes.first.cooking_time =>  35


INSERT INTO recipes (name, cooking_time, rating) VALUES ('Katsu Curry', '25', '5');
INSERT INTO recipes (name, cooking_time, rating) VALUES ('Mushroom Risotto', '35', '5');