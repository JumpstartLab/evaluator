instructor_evaluation "1-on-1 for 3/15/12" do
  section "Basics" do  
    question "Who are you meeting with?" do
      free_response :string
    end
  end

  section "Pre-Meeting" do
    question "Having read their self and peer assessments, what are you curious about?" do
      free_response :text
    end

    question "Any acute concerns?" do
      free_response :text
    end

    question "Anything you want to reinforce or recognize?" do
      free_response :text
    end
  end

  section "Post-Meeting" do
    question "Acute concerns?" do
      free_response :text
    end

    question "Reinforce or recognize?" do
      free_response :text
    end

    question "Any to-dos for them?" do
      free_response :string
    end

    question "Any to-dos for you?" do
      free_response :text
    end

    question "Overall thoughts?" do
      free_response :text
    end
  end
end
