require 'rails_helper'

RSpec.describe "rubrics/index", :type => :view do
  before(:each) do
    assign(:rubrics, [
      Rubric.create!(
        :creator_id => "",
        :name => "Name",
        :description => "MyText",
        :active => false
      ),
      Rubric.create!(
        :creator_id => "",
        :name => "Name",
        :description => "MyText",
        :active => false
      )
    ])
  end

  it "renders a list of rubrics" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
