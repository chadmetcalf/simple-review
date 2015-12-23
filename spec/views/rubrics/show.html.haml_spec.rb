require 'rails_helper'

RSpec.describe "rubrics/show", :type => :view do
  before(:each) do
    @rubric = assign(:rubric, Rubric.create!(
      :created_by => "",
      :reviewee => "",
      :closed => false,
      :closed_by => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
