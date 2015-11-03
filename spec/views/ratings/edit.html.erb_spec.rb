require 'rails_helper'

RSpec.describe "ratings/edit", type: :view do
  before(:each) do
    @rating = assign(:rating, Rating.create!(
      :stars => 1,
      :recipe_id => 1
    ))
  end

  it "renders the edit rating form" do
    render

    assert_select "form[action=?][method=?]", rating_path(@rating), "post" do

      assert_select "input#rating_stars[name=?]", "rating[stars]"

      assert_select "input#rating_recipe_id[name=?]", "rating[recipe_id]"
    end
  end
end
