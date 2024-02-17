json.extract! recipe, :id, :name, :steps, :description, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
