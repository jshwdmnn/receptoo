class Recipe < ActiveRecord::Base

	enum category: [:mediterrean, :beverage, :halal, :indian, :chinese, :salad, :dessert, :soup, :starter, :fingerfood, :other]

	attr_accessor :title, :description, :duration, :rating, :creator_name, :category, :ingredients, :comments
end