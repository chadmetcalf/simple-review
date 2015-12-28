require 'rails_helper'

RSpec.describe "descriptors/show", :type => :view do
  before(:each) do
    @descriptor = assign(:descriptor, Descriptor.create!(
      :level_id => "",
      :description => "MyText",
      :order => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
