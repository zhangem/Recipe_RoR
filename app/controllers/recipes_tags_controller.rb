class RecipesTagsController

  def index
    @recipe = Recipe.find(params[:id])
    @tags = Tag.all
  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @tags = @recipe.tags.new(params[:recipe_id])
  end

  def create
    @recipe = Recipe.find
  end
end
