require 'spec_helper'

describe "admin/categories/show" do
  before(:each) do
    @admin_category = assign(:admin_category, stub_model(Admin::Category,
      :title => "Title",
      :phone => "Phone",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Phone/)
    rendered.should match(/Description/)
  end
end
