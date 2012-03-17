FactoryGirl.define do
  factory :person do
    first_name "John"
    last_name "Doe"
    email "john@hungryacademy.com"
    github_handle "jdoe"

    factory :octocat do
      first_name "Octo"
      last_name "Cat"
      email "octocat@hungryacademy.com"
      github_handle "octocat"
    end
  end
end
