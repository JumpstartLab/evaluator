# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :authentication do
    provider "github"
    uid "octocat_uid"
    person
  end
end
