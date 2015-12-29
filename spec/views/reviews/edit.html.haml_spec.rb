require 'rails_helper'

RSpec.describe "reviews/edit", :type => :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :creator_id => "",
      :reviewer_id => "",
      :reviewee_id => "",
      :rubric_id => "",
      :active => false,
      :document => ""
    ))
  end

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(@review), "post" do

      assert_select "input#review_creator_id[name=?]", "review[creator_id]"

      assert_select "input#review_reviewer_id[name=?]", "review[reviewer_id]"

      assert_select "input#review_reviewee_id[name=?]", "review[reviewee_id]"

      assert_select "input#review_rubric_id[name=?]", "review[rubric_id]"

      assert_select "input#review_active[name=?]", "review[active]"

      assert_select "input#review_document[name=?]", "review[document]"
    end
  end
end
