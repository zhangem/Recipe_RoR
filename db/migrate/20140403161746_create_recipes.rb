class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.column :name, :string
    end

    create_table :tags do |t|
      t.column :name, :string
    end

    create_table :recipes_tags do |t|
      t.column :recipes_id, :int
      t.column :tags_id, :int
    end
  end
end
