class RecipesRepository
    def all
        # Executes the SQL query:
        # SELECT id, name, cohort_name FROM students;
    
        # Returns an array of Student objects.
    end

    def find(id)
        # Executes the SQL query:
        # SELECT id, name, cohort_name FROM students WHERE id = $1;
    
        # Returns a single Student object.
      end  

end