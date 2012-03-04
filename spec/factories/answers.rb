# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    question_id 1
    text "MyText"
    help_text "MyText"
    weight 1
    display_order 1
    exclusive false
    type ""
    default_value "MyString"
  end
end
