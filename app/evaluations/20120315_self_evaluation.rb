evaluation "Pre-Assessment for 3/15/12" do
  section "You" do  
    question "Where is your confidence right now?" do
      pick(:one) do
        option "Extremely High"
        option "Solid"
        option "Uncertain"
        option "Doubting"
        option "Ready to Quit"
      end
    end

  end

  section "Project Work" do
    question "Your first project is over. How did it go?" do
      free_response :text
    end
  end

  section "Other Work" do
    question "Are you making progress on HTML & CSS" do
      free_response :string
    end

    question "Have you finished writing your HTML & CSS exercise?" do
      pick(:one) do
        option "Yes"
        option "No"
      end
    end

    question "What do you expect to get out of your open source work tomorrow?" do
      free_response :text
    end
  end

  section "Content" do
    question "What's something you learned this week?" do
      free_response :text
    end

    question "What's something that's still confusing?" do
      free_response :text
    end
  end

  section "Community" do
    question "How did you enjoy working with and around your peers this week?" do
      free_response :text
    end

    question "Did anyone have an exceptionally positive impact on you? Who/how?" do
      free_response :text
    end

    question "Did anyone make you feel irritated, offended, or hurt? Who/when/how?" do
      free_response :text
    end    
  end

  section "Effort & Work" do
    question "What did you do well this week?" do
      free_response :text
    end

    question "What could you have done better?" do
      free_response :text
    end

    question "What did Jeff/Matt do well this week?" do
      free_response :text
    end

    question "What could Jeff/Matt have done better?" do
      free_response :text
    end
  end
end
