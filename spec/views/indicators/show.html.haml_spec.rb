require 'rails_helper'

RSpec.describe "indicators/show", :type => :view do
  before(:each) do
    @indicator = assign(:indicator, Indicator.create!(
      :creator => "",
      :rubric_id => "",
      :active => false,
      :description => "MyText",
      :order => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
