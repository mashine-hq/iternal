require 'spec_helper'

describe "admin/companies/index" do
  before(:each) do
    assign(:admin_companies, [
      stub_model(Admin::Company,
        :title => "Title",
        :phone => "Phone",
        :description => "Description",
        :category_id => 1
      ),
      stub_model(Admin::Company,
        :title => "Title",
        :phone => "Phone",
        :description => "Description",
        :category_id => 1
      )
    ])
  end

  it "renders a list of admin/companies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
