assessment "Pre-Assessment for 3/12/12" do
  section "Expectations" do
    question "One week down, many to go. How are you feeling?"
    a :string

    question "Where is your confidence going into today?", :pick => :one
    answer "Extremely High"
    answer "Solid"
    answer "Uncertain"
    answer "Doubting"
    answer "Ready to Quit"

    question "What "
  end

  section "Content" do
    question "For today you read 'Hackers and Painters' - what did you think of it?", :pick => :one
    answer "Life changing"
    answer "Thought provoking"
    answer "Decent"
    answer "Not quite a waste of time"
    answer "I didn't get it"
    answer "Hated it"

    question "What's something you're really curious about from last week?"
    answer :text
  end

  section "Community" do
    question "You've had a chance to meet your peers. Who's one person you're excited to work with?"
    answer :string

    question "Why?"
    answer :text

    question "What was your favorite activity from last week and why?"
    answer :text

    question "What activity from last week did you find least valuable? Why?"
    answer :text
  end

  section "Technical" do
    question "Have you completed a working JSTwitter implementation?", :pick => :one
    answer "Yes"
    answer "Partly"
    answer "No"

    question "What kind of data are better represented by hashes than arrays?"
    answer :text

    question_methods "Do you know how to define a method in Ruby?", :pick => :one
    answer_1 "Yes"
    answer_2 "No"

    question "Define a method named 'titleify' that takes a parameter string and returns that string with the first letter of each word capitalized:"
    answer :text
    dependency :rule => "A"
    condition_A :question_methods, "==", :answer_1

    question "Do you know how to implement a 'command prompt'-like menu system?", :pick => :one
    answer "Yes"
    answer "Partly"
    answer "No"

    question "Can you write a method that mimics named parameters?", :pick => :one
    answer "Yes"
    answer "Partly"
    answer "No"

    question "Can you write a method with a default/optional parameter?", :pick => :one
    answer "Yes"
    answer "Partly"
    answer "No"

    question "Can you write a method that executes a block?", :pick => :one
    answer "Yes"
    answer "Partly"
    answer "No"
  end

end
