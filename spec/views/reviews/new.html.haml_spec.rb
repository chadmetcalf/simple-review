require 'rails_helper'

RSpec.describe "reviews/new", :type => :view do
  before(:each) do
    assign(:review, Review.new(
      :creator_id => "",
      :reviewer_id => "",
      :reviewee_id => "",
      :rubric_id => "",
      :active => false,
      :document => ""
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input#review_creator_id[name=?]", "review[creator_id]"

      assert_select "input#review_reviewer_id[name=?]", "review[reviewer_id]"

      assert_select "input#review_reviewee_id[name=?]", "review[reviewee_id]"

      assert_select "input#review_rubric_id[name=?]", "review[rubric_id]"

      assert_select "input#review_active[name=?]", "review[active]"

      assert_select "input#review_document[name=?]", "review[document]"
    end
  end
end
