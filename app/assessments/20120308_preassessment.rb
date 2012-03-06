assessment "Pre-Assessment for 3/8/12" do
  section "Expectations" do
    question "It's the first day. Sum up your feelings in one sentence" do
      free_response :string
    end

    question "Where is your confidence going into today?" do
      pick(:one) do
        option "Extremely High"
        option "Solid"
        option "Uncertain"
        option "Doubting"
        option "Ready to Quit"
      end
    end
  end

  section "Technical" do
    question "How confident are you with Ruby Strings?" do
      pick(:one) do
        option "What's a string?"
        option "I know one or two manipulations"
        option "I can perform many manipulations like formatting, substrings"
        option "I can do most things on my own, refer to the API occasionally"
        option "I know it all"
      end
    end

    question "Do you know the difference between an Array and a Hash?" do
      pick(:one) do
        option "Yes, and I can explain it."
        option "Kinda"
        option "No"
        option "Never heard of them"
      end
    end

    # question "Which Beatles do you like?" do
    #   pick(:any) do
    #     option "John"
    #     option "Paul"
    #     option "George"
    #     option "Ringo"
    #     option "Who are the Beatles?", exclusive: true
    #   end
    # end

    question "How familiar with 'Extract, Transform, Load' (ETL) processes?" do
      pick(:one) do
        option "Say what?"
        option "Somewhat Familiar"
        option "I've written ETL systems"
        option "I Extract, Transform, and Load in my sleep."
      end
    end

    question "Do you know how to define a method in Ruby?", :name => "how_to_define" do
      # pick_yes_or_no
      pick(:one) do
        option "Yes", :yes
        option "No",  :no
      end
    end

    question "Define a method named 'make_dinner' that takes a parameter quantity of guests. When the method is run, it prints the line 'Preparing dinner for X guests.' where 'X' is the parameter" do
      free_response :text
      dependent do
        condition question_name: "how_to_define", "==", :answer => :yes
      end
    end

    question "How do you know when a method needs to be refactored?", free_response: :text

    question "What's the maximum number of 'responsibilities' a method should have?", free_response: :integer
  end

end
