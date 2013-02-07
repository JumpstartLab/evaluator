evaluation "Self-Assessment for 6/22/12" do
  section "You" do
    pick_one "How happy were you with your individual project plan?" do
      option "Psyched"
      option "Good"
      option "OK"
      option "Frustrated"
      option "Disappointed"
      option "RAWRWTFRAWR"
    end

    free_response "Why / How?", kind: :text
  end

  section "Project Work" do
    free_response "What's better about working on your own?", :kind => :text
    free_response "What's harder?", :kind => :text
    free_response "What did you think of the cards/trading game?", :kind => :text
  end

  section "Effort & Work" do
    free_response "What are your work strategies for next week?", :kind => :text
  end

  section "Community" do
    free_response "What are you going to emphasize in the last few weeks?", :kind => :text
    free_response "Did anyone make you feel irritated, offended, or hurt? Who/when/how?", :kind => :text
  end
end
