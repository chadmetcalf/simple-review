require 'rails_helper'

RSpec.describe "levels/edit", :type => :view do
  before(:each) do
    @level = assign(:level, Level.create!(
      :indicator_id => "",
      :order => 1
    ))
  end

  it "renders the edit level form" do
    render

    assert_select "form[action=?][method=?]", level_path(@level), "post" do

      assert_select "input#level_indicator_id[name=?]", "level[indicator_id]"

      assert_select "input#level_order[name=?]", "level[order]"
    end
  end
end
