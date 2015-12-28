require 'rails_helper'

RSpec.describe "rubrics/show", :type => :view do
  before(:each) do
    @rubric = assign(:rubric, Rubric.create!(
      :created_by_id => "",
      :name => "Name",
      :description => "MyText",
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
