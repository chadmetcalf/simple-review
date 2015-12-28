require 'rails_helper'

RSpec.describe "levels/show", :type => :view do
  before(:each) do
    @level = assign(:level, Level.create!(
      :indicator_id => "",
      :order => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
  end
end
