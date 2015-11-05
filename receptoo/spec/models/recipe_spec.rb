require 'rails_helper'

RSpec.describe Recipe, type: :model do
	rec = Recipe.new

  describe 'A Recipe Model' do
  	it 'reflects it´s own class' do
			expect(rec.class).to eql Recipe	
  	end

  	it 'has fields' do
  		rec.title 			 = "Oma´s Eintopf"
			rec.description  = "Eintopf mit Kartoffeln und Würstchen"
			# rec.ingredients  = Ingredient.new(name: "Tomate", type: IntergredientType.VEGETABLE)
			# rec.duration     = 20
			# rec.comments		 = Comment.new(user: "Klaus", comment_text: "Das war aber lecker.")
			# rec.rating			 = 3
			# rec.creator_name = "Peter Pan"
  		expect(rec).to have_attributes(title: "Oma´s Eintopf", 
  																	 description: "Eintopf mit Kartoffeln und Würstchen")

  		rec.category		 = Recipe.categories[:HALAL]
  		# we getting the index from categories array
  		expect(rec.category).to eql 2
  	end

  end
end
