class Client::RecipesController < ApplicationController
  def index
    response = Unirest.get("http://localhost:3000/api/recipes")
    @recipes = response.body
    render 'index.html.erb'
  end
end
