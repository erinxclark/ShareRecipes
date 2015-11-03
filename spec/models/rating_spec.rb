require 'rails_helper'

RSpec.describe Rating, type: :model do

  it "has a rating" do
    aRating = Rating.new
    aRating.stars = 'myRating'
    expect(aRating.stars).to eq('myRating')
  end

  it "is associated with an existing recipe" do
    aRating = Rating.new
    aRating.stars = 'new rating'
    aRecipe = Recipe.new
    aRating.recipe = (aRecipe)
    expect(aRating.recipe()).to eq a Recipe
  end

end
