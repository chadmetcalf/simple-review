require 'rails_helper'

RSpec.describe "rubrics/new", :type => :view do
  before(:each) do
    assign(:rubric, Rubric.new(
      :created_by => "",
      :reviewee => "",
      :closed => false,
      :closed_by => ""
    ))
  end

  it "renders new rubric form" do
    render

    assert_select "form[action=?][method=?]", rubrics_path, "post" do

      assert_select "input#rubric_created_by[name=?]", "rubric[created_by]"

      assert_select "input#rubric_reviewee[name=?]", "rubric[reviewee]"

      assert_select "input#rubric_closed[name=?]", "rubric[closed]"

      assert_select "input#rubric_closed_by[name=?]", "rubric[closed_by]"
    end
  end
end
