require 'rails_helper'

RSpec.describe "descriptors/new", :type => :view do
  before(:each) do
    assign(:descriptor, Descriptor.new(
      :level_id => "",
      :description => "MyText",
      :order => 1
    ))
  end

  it "renders new descriptor form" do
    render

    assert_select "form[action=?][method=?]", descriptors_path, "post" do

      assert_select "input#descriptor_level_id[name=?]", "descriptor[level_id]"

      assert_select "textarea#descriptor_description[name=?]", "descriptor[description]"

      assert_select "input#descriptor_order[name=?]", "descriptor[order]"
    end
  end
end
