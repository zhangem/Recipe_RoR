class RemoveTagIdColumn < ActiveRecord::Migration
  def change
    remove_column :recipes, :tag_id, :text
  end
end
