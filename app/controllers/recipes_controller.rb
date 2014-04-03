class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render('recipes/index.html.erb')
  end

  def show
    @recipe = Recipe.find(params[:id])
    render('recipes/show.html.erb')
  end

  def new
    @recipe = Recipe.new
    render('recipes/new.html.erb')
  end

  def create
    @recipe = Recipe.create(:name => params[:name], :ingredients => params[:ingredients], :instructions => params[:instructions])

    if @recipe.save
      redirect_to("/recipes/#{@recipe.id}")
    else
      render('recipes/new.html.erb')
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    render('recipes/edit.html.erb')
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(:name => params[:name], :ingredients => params[:ingredients], :instructions => params[:instructions])
      redirect_to("/recipes/#{@recipe.id}")
    else
      render('recipes/edit.html.erb')
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to("/")
  end

end
