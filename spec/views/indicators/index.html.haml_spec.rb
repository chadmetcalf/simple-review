require 'rails_helper'

RSpec.describe "indicators/index", :type => :view do
  before(:each) do
    assign(:indicators, [
      Indicator.create!(
        :creator => "",
        :rubric_id => "",
        :active => false,
        :description => "MyText",
        :order => 1
      ),
      Indicator.create!(
        :creator => "",
        :rubric_id => "",
        :active => false,
        :description => "MyText",
        :order => 1
      )
    ])
  end

  it "renders a list of indicators" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
