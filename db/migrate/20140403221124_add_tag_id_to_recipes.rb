class AddTagIdToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :tag_id, :text
  end
end
