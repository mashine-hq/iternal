# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_company, :class => 'Admin::Company' do
    title "MyString"
    phone "MyString"
    description "MyString"
    category_id 1
  end
end
