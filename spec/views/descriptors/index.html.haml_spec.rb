require 'rails_helper'

RSpec.describe "descriptors/index", :type => :view do
  before(:each) do
    assign(:descriptors, [
      Descriptor.create!(
        :level_id => "",
        :description => "MyText",
        :order => 1
      ),
      Descriptor.create!(
        :level_id => "",
        :description => "MyText",
        :order => 1
      )
    ])
  end

  it "renders a list of descriptors" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
