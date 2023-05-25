require 'recipe_repository'

RSpec.describe RecipeRepository do 
    def reset_recipes_table 
        seed_sql = File.read('spec/restaurant_seeds_test.sql')
        connection = PG.connect({host: '127.0.0.1', dbname: 'recipes_directory_test' })
        connection.exec(seed_sql)
    end 

    before(:each) do
        reset_recipes_table
    end 

    it 'returns the list of recipes' do 
        repo = RecipeRepository.new 
        recipes = repo.all 

        expect(recipes.length).to eq(2)
        expect(recipes.first.name).to eq('Katsu Curry')
        expect(recipes.first.cooking_time).to eq('25')  
        expect(recipes.first.rating).to eq('5')
    end     

    it 'returns the first recipe' do 
        repo = RecipeRepository.new 
        recipes = repo.find(1)

        expect(recipes.name).to eq('Katsu Curry')
        expect(recipes.cooking_time).to eq('25') 
        expect(recipes.rating).to eq('5')
    end  
    
    it 'returns the first recipe' do 
        repo = RecipeRepository.new 
        recipes = repo.find(2)

        expect(recipes.name).to eq('Mushroom Risotto')
        expect(recipes.cooking_time).to eq('35') 
        expect(recipes.rating).to eq('5')
    end    

end 
