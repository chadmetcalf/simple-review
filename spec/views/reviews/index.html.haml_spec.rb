require 'rails_helper'

RSpec.describe "reviews/index", :type => :view do
  before(:each) do
    assign(:reviews, [
      Review.create!(
        :creator_id => "",
        :reviewer_id => "",
        :reviewee_id => "",
        :rubric_id => "",
        :active => false,
        :document => ""
      ),
      Review.create!(
        :creator_id => "",
        :reviewer_id => "",
        :reviewee_id => "",
        :rubric_id => "",
        :active => false,
        :document => ""
      )
    ])
  end

  it "renders a list of reviews" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
