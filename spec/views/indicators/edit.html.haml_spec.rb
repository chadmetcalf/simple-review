require 'rails_helper'

RSpec.describe "indicators/edit", :type => :view do
  before(:each) do
    @indicator = assign(:indicator, Indicator.create!(
      :creator => "",
      :rubric_id => "",
      :active => false,
      :description => "MyText",
      :order => 1
    ))
  end

  it "renders the edit indicator form" do
    render

    assert_select "form[action=?][method=?]", indicator_path(@indicator), "post" do

      assert_select "input#indicator_creator[name=?]", "indicator[creator]"

      assert_select "input#indicator_rubric_id[name=?]", "indicator[rubric_id]"

      assert_select "input#indicator_active[name=?]", "indicator[active]"

      assert_select "textarea#indicator_description[name=?]", "indicator[description]"

      assert_select "input#indicator_order[name=?]", "indicator[order]"
    end
  end
end
