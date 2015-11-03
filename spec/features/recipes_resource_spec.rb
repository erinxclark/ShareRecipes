require 'rails_helper'

describe "the posting of recipes" do
 it "should allow a user to enter a recipe" do
   visit '/recipes/new'
   fill_in('Title', :with => "myTitle")
   fill_in 'Author', :with => 'myAuthor'
   fill_in 'Ingredients', :with => 'theIngredients'
   fill_in 'Instructions', :with => "do it"
   click_button 'Create Recipe'
   page.should have_content 'myTitle'
   page.should have_content 'myAuthor'
   page.should have_content 'theIngredients'
   page.should have_content 'do it'
   visit '/recipes'
   page.should have_content 'myTitle'
   page.should have_content 'myAuthor'
   page.should have_content 'theIngredients'
   page.should have_content 'do it'

 end
end
