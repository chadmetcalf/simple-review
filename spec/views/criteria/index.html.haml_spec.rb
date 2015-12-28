require 'rails_helper'

RSpec.describe "criteria/index", :type => :view do
  before(:each) do
    assign(:criteria, [
      Criterium.create!(
        :created_by => "",
        :rubric_id => "",
        :active => false,
        :description => "MyText",
        :order => 1
      ),
      Criterium.create!(
        :created_by => "",
        :rubric_id => "",
        :active => false,
        :description => "MyText",
        :order => 1
      )
    ])
  end

  it "renders a list of criteria" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
