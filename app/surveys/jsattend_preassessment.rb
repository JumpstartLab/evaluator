survey "JSAttend Pre-Assessment" do
  section "Expectations" do
    question_1 "Where is your confidence going into this project?", :pick => :one
    answer "Extremely High"
    answer "Solid"
    answer "Uncertain"
    answer "Not Feeling It"

    question_2 "What's one thing you are intrigued by in this project?"
    a :text
  end

  section "Technical" do
    question_3 "How familiar with 'Extract, Translate, Load' (ETL) processes?", :pick => :one
    answer "Say what?"
    answer "Somewhat Familiar"
    answer "I've written ETL systems"
    answer "I Extract, Translate, and Load in my sleep."

    question_4 "How comfortable are you manipulating strings in Ruby?", :pick => :one
    answer "What's a string?"
    answer "I know one or two manipulations"
    answer "I can perform many manipulations like formatting, substrings"
    answer "I can do most things on my own, refer to the API occasionally"
    answer "I write my Ruby in UTF-8 Kanji for fun"
  end

end