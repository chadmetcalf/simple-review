require 'rails_helper'

RSpec.describe "rubrics/index", :type => :view do
  before(:each) do
    assign(:rubrics, [
      Rubric.create!(
        :created_by => "",
        :reviewee => "",
        :closed => false,
        :closed_by => ""
      ),
      Rubric.create!(
        :created_by => "",
        :reviewee => "",
        :closed => false,
        :closed_by => ""
      )
    ])
  end

  it "renders a list of rubrics" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
