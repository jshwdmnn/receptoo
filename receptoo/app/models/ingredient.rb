class Ingredient < ActiveRecord::Base
  enum type: [ :meat, :vegetable, :fruit, :fish ]
  
  has_and_belongs_to_many :recipes

  attr_accessor :name, :type, :recipes
end
