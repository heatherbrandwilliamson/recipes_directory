require_relative 'lib/database_connection'
require_relative 'lib/recipe_repository'

DatabaseConnection.connect('recipes_directory')

recipe_repository = RecipeRepository.new

recipe_repository.all.each do |recipe|
  p recipe.id, recipe.name, recipe.cooking_time, recipe.rating
end 

repo = RecipeRepository.new
recipe = repo.find(1)
puts recipe.name