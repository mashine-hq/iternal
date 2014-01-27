require 'spec_helper'

describe "admin/companies/show" do
  before(:each) do
    @admin_company = assign(:admin_company, stub_model(Admin::Company,
      :title => "Title",
      :phone => "Phone",
      :description => "Description",
      :category_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Phone/)
    rendered.should match(/Description/)
    rendered.should match(/1/)
  end
end
