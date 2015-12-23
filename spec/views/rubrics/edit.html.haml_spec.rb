require 'rails_helper'

RSpec.describe "rubrics/edit", :type => :view do
  before(:each) do
    @rubric = assign(:rubric, Rubric.create!(
      :created_by => "",
      :reviewee => "",
      :closed => false,
      :closed_by => ""
    ))
  end

  it "renders the edit rubric form" do
    render

    assert_select "form[action=?][method=?]", rubric_path(@rubric), "post" do

      assert_select "input#rubric_created_by[name=?]", "rubric[created_by]"

      assert_select "input#rubric_reviewee[name=?]", "rubric[reviewee]"

      assert_select "input#rubric_closed[name=?]", "rubric[closed]"

      assert_select "input#rubric_closed_by[name=?]", "rubric[closed_by]"
    end
  end
end
