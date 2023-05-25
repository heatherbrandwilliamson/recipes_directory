require_relative './recipe'

class RecipeRepository
    def all
    sql = 'SELECT id, name, cooking_time, rating FROM recipes;'
    result_set = DatabaseConnection.exec_params(sql, []) 
    recipes = []
      result_set.each do |record|
          recipe = Recipe.new
          recipe.id = record['id']
          recipe.name = record['name']
          recipe.cooking_time = record['cooking_time']
          recipe.rating = record['rating']
        
          recipes << recipe
   
        end
      return recipes
    end

    def find(id)
                # The placeholder $1 is a "parameter" of the SQL query.
        # It needs to be matched to the corresponding element 
        # of the array given in second argument to exec_params.
        # (If we needed more parameters, we would call them $2, $3...
        # and would need the same number of values in the params array).
        sql = 'SELECT id, name, cooking_time, rating FROM recipes WHERE id = $1;'
        sql_params = [id]
        result_set = DatabaseConnection.exec_params(sql, sql_params)

        record = result_set[0]
        recipe = Recipe.new
        recipe.id = record['id']
        recipe.name = record['name']
        recipe.cooking_time = record['cooking_time']
        recipe.rating = record['rating']

        return recipe
    end 

end 

