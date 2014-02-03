# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :company do
    title "MyString"
    phones "MyString"
    description "MyString"
    category nil
  end
end
