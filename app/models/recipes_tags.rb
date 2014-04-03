class RecipeTag < ActiveRecord::Base
  belongs_to :recipes
  belongs_to :tags
  validates :recipes_id, :presence => true
  validates :tags_id, :presence => true
end
