require 'rails_helper'

describe "adding tag to a recipe" do
 it "should allow a user to enter a tag for a recipe" do
   visit '/recipes/new'
   fill_in('Title', :with => "myTitle")
   fill_in 'Author', :with => 'myAuthor'
   fill_in 'Ingredients', :with => 'theIngredients'
   fill_in 'Instructions', :with => "do it"
   click_button 'Create Recipe'
   fill_in 'Tag Name', :with => "myTag"
   click_button 'Add Tag'
   page.should have_content 'myTag'


 end
end
