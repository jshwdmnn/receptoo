require 'rails_helper'

RSpec.describe Ingredient, type: :model do

  describe 'A Ingredient model' do

    it 'reflects on its own class' do
      ing = Ingredient.new
      expect(ing.class).to eql Ingredient
    end

    it 'has fields' do
      ing = Ingredient.new(name: "Tomate", type: Ingredient.types[:vegetable])
      expect(ing).to have_attributes(:name => "Tomate", :type => Ingredient.types[:vegetable])
    end

  end
end
