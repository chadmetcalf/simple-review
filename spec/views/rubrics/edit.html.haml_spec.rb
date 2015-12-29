require 'rails_helper'

RSpec.describe "rubrics/edit", :type => :view do
  before(:each) do
    @rubric = assign(:rubric, Rubric.create!(
      :creator_id => "",
      :name => "MyString",
      :description => "MyText",
      :active => false
    ))
  end

  it "renders the edit rubric form" do
    render

    assert_select "form[action=?][method=?]", rubric_path(@rubric), "post" do

      assert_select "input#rubric_creator_id[name=?]", "rubric[creator_id]"

      assert_select "input#rubric_name[name=?]", "rubric[name]"

      assert_select "textarea#rubric_description[name=?]", "rubric[description]"

      assert_select "input#rubric_active[name=?]", "rubric[active]"
    end
  end
end
