require 'rails_helper'

describe "rate recipes by stars" do

  it "should be able to be rated" do
    visit '/recipes/show'
    expect(find_button("Rate").click).to eq true
    # expect(find_field("Tag Name:").value).to eq nil
    # page.should have_no_content 'Recipes Found'
    # page.should have_no_content 'No Recipes Found :('
  end

  it "should accept a rating" do
    visit '/recipes/show'
    select('1', :from => 'star_rating')
    click('Rate')
  end

  # it "should be averaged out" do
  #   visit '/tags/search?search_string=platypus'
  # end





end
