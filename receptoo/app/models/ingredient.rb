class Ingredient < ActiveRecord::Base
  enum type: [ :meat, :vegetable, :fruit, :fish ]
  
  attr_accessor :name, :type
end
