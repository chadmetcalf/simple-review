require 'rails_helper'

RSpec.describe "criteria/edit", :type => :view do
  before(:each) do
    @criterium = assign(:criterium, Criterium.create!(
      :creator => "",
      :rubric_id => "",
      :active => false,
      :description => "MyText",
      :order => 1
    ))
  end

  it "renders the edit criterium form" do
    render

    assert_select "form[action=?][method=?]", criterium_path(@criterium), "post" do

      assert_select "input#criterium_creator[name=?]", "criterium[creator]"

      assert_select "input#criterium_rubric_id[name=?]", "criterium[rubric_id]"

      assert_select "input#criterium_active[name=?]", "criterium[active]"

      assert_select "textarea#criterium_description[name=?]", "criterium[description]"

      assert_select "input#criterium_order[name=?]", "criterium[order]"
    end
  end
end
