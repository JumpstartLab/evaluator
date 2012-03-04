# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    evaluation_section_id 1
    text "MyText"
    help_text "MyText"
    type ""
    pick "MyString"
    display_order 1
    mandatory false
    correct_answer_id 1
  end
end
