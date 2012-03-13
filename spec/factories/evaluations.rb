# Read about factories at https://github.com/thoughtbot/factory_girl
require 'securerandom'

FactoryGirl.define do
  factory :evaluation do
    person
    title "Preassessment 2/12/2012"
    description "This is an important pre-assessment"
    metadata nil
    sequence(:display_order) {|n| n }
    access_code SecureRandom.hex
    open_at 1.day.ago
    close_at nil

    factory :closed_evaluation do
      close_at 10.minutes.ago
    end

    factory :open_evaluation do
      close_at 1.hour.from_now
    end
  end
end
