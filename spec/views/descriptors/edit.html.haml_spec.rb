require 'rails_helper'

RSpec.describe "descriptors/edit", :type => :view do
  before(:each) do
    @descriptor = assign(:descriptor, Descriptor.create!(
      :level_id => "",
      :description => "MyText",
      :order => 1
    ))
  end

  it "renders the edit descriptor form" do
    render

    assert_select "form[action=?][method=?]", descriptor_path(@descriptor), "post" do

      assert_select "input#descriptor_level_id[name=?]", "descriptor[level_id]"

      assert_select "textarea#descriptor_description[name=?]", "descriptor[description]"

      assert_select "input#descriptor_order[name=?]", "descriptor[order]"
    end
  end
end
