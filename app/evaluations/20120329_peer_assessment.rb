evaluation "Peer Assessment for SalesEngine" do
  section "Who You're Reviewing" do
    question "Enter the \"Git Read-Only\" URL for the project" do
      free_response :string
    end
  end

  section "Correctness" do
    question "What score did they earn for correctness? (0 to 4 only)" do
      free_response :integer
    end

    question "If applicable, what problems did you run into?" do
      free_response :text
    end
  end

  section "Testing" do
    question "What score did they earn for test coverage? (0-4 only)" do
      free_response :integer
    end

    question "What was the measured percentage?" do
      free_response :text
    end
  end

  section "Style" do
    question "What score did they earn for style? (0-4 only)" do
      free_response :integer
    end

    question "If applicable, what problems did you find?" do
      free_response :text
    end
  end

  section "Performance" do
    question "What score did they earn for performance? (0-3 only)" do
      free_response :integer
    end

    question "Notes" do
      free_response :text
    end
  end


  section "Live Hungry" do
    question "What score did they earn for effort? (0-5 only)" do
      free_response :integer
    end

    question "Did they \"Live Hungry\"? If so, how?" do
      free_response :text
    end
  end

  section "Recognize Others" do
    question "Would you like to recognize anyone for helping with *your* project? Enter their github username:" do
      free_response :string
    end
    question "How many points would you award them? (Max: 2)" do
      free_response :integer
    end
    question "If you only allocated one point previously, you may award one point to another person. Enter their github username:" do
      free_response :string
    end
    question "Notes" do
      free_response :text
    end
  end
end