class Recipe < ActiveRecord::Base

	enum category: [:MEDITERREAN, :BEVERAGE, :HALAL, :INDIAN, :CHINESE, :SALAD, :DESSERT, :SOUP, :STARTER, :FINGERFOOD, :OTHER]

	attr_accessor :title, :description, :category
end