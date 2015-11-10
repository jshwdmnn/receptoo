class Ingredient < ActiveRecord::Base
  enum ingredient_type: [:meat, :vegetable, :fruit, :fish]
  
  has_and_belongs_to_many :recipes

  attr_accessor :name, :ingredient_type, :recipes
end