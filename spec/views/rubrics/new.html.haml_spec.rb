require 'rails_helper'

RSpec.describe "rubrics/new", :type => :view do
  before(:each) do
    assign(:rubric, Rubric.new(
      :created_by_id => "",
      :name => "MyString",
      :description => "MyText",
      :active => false
    ))
  end

  it "renders new rubric form" do
    render

    assert_select "form[action=?][method=?]", rubrics_path, "post" do

      assert_select "input#rubric_created_by_id[name=?]", "rubric[created_by_id]"

      assert_select "input#rubric_name[name=?]", "rubric[name]"

      assert_select "textarea#rubric_description[name=?]", "rubric[description]"

      assert_select "input#rubric_active[name=?]", "rubric[active]"
    end
  end
end
