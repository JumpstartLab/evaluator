evaluation "Peer Assessment for EventReporter" do
  section "Basics" do
    question "Whose project are you assessing? Enter their github username" do
      free_response :string
    end

    question "Enter the \"Git Read-Only\" URL for their project" do
      free_response :string
    end
  end

  section "Correctness" do
    question "What score did they earn for correctness?" do
      free_response :integer
    end

    question "If applicable, what problems did you run into?" do
      free_response :text
    end
  end

  section "Style" do
    question "What score did they earn for style?" do
      free_response :integer
    end

    question "If applicable, what problems did you run into?" do
      free_response :text
    end
  end

  section "Effort" do
    question "What score did they earn for effort?" do
      free_response :integer
    end

    question "Did they \"Live Hungry\"? If so, how?" do
      free_response :text
    end
  end

  section "Wrapup" do
    question "Any closing thoughts/recommendations?" do
      free_response :text
    end
  end
end