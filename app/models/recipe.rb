class Recipe < ActiveRecord::Base
  # has_and_belongs_to_many :tags
  validates :name, :presence => true
  validates :ingredients, :presence => true
  validates :instructions, :presence => true
end
