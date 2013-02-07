evaluation "Yo! Self-Assessment for 3/30/12" do
  section "You" do
    pick_one "Where is your confidence right now?" do
      option "Extremely High"
      option "Solid"
      option "Uncertain"
      option "Doubting"
      option "Ready to Quit"
    end

    free_response "Why?", kind: :text
  end

  section "Project Work" do
    free_response "You're completed your second project. How did it go?" do
      kind :text
    end

    free_response "In retrospect, what change about your approach to pairing, testing, or the project itself?" do
      kind :string
    end
  end

  section "Other Work" do
    free_response "Have you started reading Drive? What have you taken away so far?" do
      kind :text
    end
  end

  section "Content" do
    free_response "What's something you learned this week?" do
      kind :text
    end

    free_response "What's something that's still confusing?" do
      kind :text
    end
  end

  section "Community" do
    free_response "How did you enjoy working with and around your peers this week?" do
      kind :string
    end

    free_response "Did anyone have an exceptionally positive impact on you? Who/how?" do
      kind :string
    end

    free_response "Did anyone make you feel irritated, offended, or hurt? Who/when/how?" do
      kind :string
    end
  end

  section "Effort & Work" do
    free_response "What did you do well this week?" do
      kind :string
    end

    free_response "What could you have done better?" do
      kind :string
    end

    free_response "What did Jeff/Matt do well this week?" do
      kind :string
    end

    free_response "What could Jeff/Matt have done better?" do
      kind :string
    end
  end
end
