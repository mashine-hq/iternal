require 'spec_helper'

describe "categories/index" do
  before(:each) do
    assign(:categories, [
      stub_model(Category,
        :title => "Title",
        :phone => "Phone",
        :description => "Description"
      ),
      stub_model(Category,
        :title => "Title",
        :phone => "Phone",
        :description => "Description"
      )
    ])
  end

  it "renders a list of categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
