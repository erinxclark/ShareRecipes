require 'rails_helper'

describe "search recipe by tag" do

  it "should have an empty search area" do
    visit '/tags/search'
    expect(find_field("Tag Name:").value).to eq nil
    page.should have_no_content 'Recipes Found'
    page.should have_no_content 'No Recipes Found :('
  end

  it "should tell us no recipes found, if there are no recipes for the search tab" do
    visit '/tags/search?search_string=manatee'
  end

  it "should display recipes corresponding to tag search" do
    visit '/tags/search?search_string=platypus'
  end

end
