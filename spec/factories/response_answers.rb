# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :response_answer do
    response_id 1
    question_id 1
    answer_id 1
    serialized_value "MyText"
    unit "MyString"
  end
end
