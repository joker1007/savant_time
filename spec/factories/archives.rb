# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :archive do
    aid "MyString"
    description "MyString"
    filesize 1
    sha256 "MyString"
  end
end
