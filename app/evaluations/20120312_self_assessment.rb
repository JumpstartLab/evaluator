evaluation "Pre-Assessment for 3/12/12" do
  section "Expectations" do
    question "One week down, many to go. How are you feeling?" do
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

  section "Content" do
    question "For today you read 'Hackers and Painters' - what did you think of it?" do
      pick(:one) do
        option "Life changing"
        option "Thought provoking"
        option "Decent"
        option "Not quite a waste of time"
        option "I didn't get it"
        option "Hated it"
      end
    end

    question "What's something you're really curious about from last week?" do
      free_response :string
    end
  end

  section "Community" do
    question "You've had a chance to meet your peers. Who are you most excited to work with?" do
      free_response :string
    end

    question "Why?" do
      free_response :text
    end

    question "What was your favorite activity from last week and why?" do
      free_response :text
    end

    question "What activity from last week did you find least valuable? Why?" do
      free_response :text
    end

    question "Anything else you would have changed from last week?" do
      free_response :text
    end    
  end

  section "Technical" do
    question "Have you completed a working JSTwitter implementation?" do
      pick(:one) do
        option "Yes"
        option "Partly"
        option "No"
      end
    end

    question "What kind of data are better represented by hashes than arrays?" do
      free_response :string
    end

    question "Define a method named 'titleify' that takes a parameter string and returns that string with the first letter of each word capitalized:" do
      free_response :text
    end

    question "Do you know how to implement a 'command prompt'-like menu system?" do
      pick(:one) do
        option "Yes"
        option "Partly"
        option "No"
      end
    end

    question "Can you write a method that mimics named parameters?" do
      pick(:one) do
        option "Yes"
        option "Partly"
        option "No"
      end
    end
    

    question "Can you write a method with a default/optional parameter?" do
      pick(:one) do
        option "Yes"
        option "Partly"
        option "No"
      end
    end

    question "Can you write a method that executes a block?" do
      pick(:one) do
        option "Yes"
        option "Partly"
        option "No"
      end
    end
  end
end
