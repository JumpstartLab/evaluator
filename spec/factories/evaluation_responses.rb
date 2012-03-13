# Read about factories at https://github.com/thoughtbot/factory_girl
require 'securerandom'

FactoryGirl.define do
  factory :evaluation_response do
    evaluation
    person
    access_code SecureRandom.hex
    started_at 1.day.ago
    submitted_at nil
    completed_at nil

    factory :submitted_evaluation_response do
      submitted_at 10.minutes.ago
    end

    factory :completed_evaluation_response do
      completed_at 10.minutes.ago
    end
  end

end
