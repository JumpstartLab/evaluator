assessment "Post-Assessment for 3/9/12" do
  section "Expectations" do
    question_1 "Briefly, how did the last two days live up to your expectations?"
    a :string

    question_2 "Where is your confidence right now?", :pick => :one
    answer "Extremely High"
    answer "Solid"
    answer "Uncertain"
    answer "Doubting"
    answer "Ready to Quit"
  end

  section "Technical" do
    question_3 "How confident are you with Ruby Strings?", :pick => :one
    answer "What's a string?"
    answer "I know one or two manipulations"
    answer "I can perform many manipulations like formatting, substrings"
    answer "I can do most things on my own, refer to the API occasionally"
    answer "I know it all"

    question_4 "Do you know the difference between an Array and a Hash?", :pick => :one
    answer "Yes, and I can explain it."
    answer "Kinda"
    answer "No"
    answer "Never heard of them"

    question_5 "How familiar with 'Extract, Translate, Load' (ETL) processes?", :pick => :one
    answer "Say what?"
    answer "Somewhat Familiar"
    answer "I've written ETL systems"
    answer "I Extract, Translate, and Load in my sleep."

    question_6 "Do you know how to define a method in Ruby?", :pick => :one
    answer_1 "Yes"
    answer_2 "No"

    question_6a "Define a method named 'make_dinner' that takes a parameter quantity of guests. When the method is run, it prints the line 'Preparing dinner for X guests.' where 'X' is the parameter"
    answer :text
    dependency :rule => "A"
    condition_A :question_6, "==", :answer_1

    question_7 "How do you know when a method needs to be refactored?"
    answer :text

    question_8 "What's the maximum number of 'responsibilities' a method should have?"
    answer :integer
  end
end
