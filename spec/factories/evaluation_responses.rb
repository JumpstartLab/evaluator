# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :response do
    user_id 1
    evaluation_id 1
    access_code "MyString"
    started_at "2012-03-03 19:33:21"
    completed_at "2012-03-03 19:33:21"
  end
end
