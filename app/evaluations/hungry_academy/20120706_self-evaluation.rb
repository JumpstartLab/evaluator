evaluation "Self-Assessment for 7/6/12" do
  section "You" do
    pick_one "How happy were you with your individual project?" do
      option "Ecstatic"
      option "Proud"
      option "OK"
      option "Disappointed"
      option "Frustrated"
    end

    free_response "Why / How?", kind: :text
  end

  section "Project Work" do
    free_response "What lessons will you take into the final project?", :kind => :text
    free_response "What are you looking forward to or worried about as you return to working in a team?", :kind => :text
  end

  section "Effort & Work" do
    free_response "How did your planning/scheduling/self-management work out?", :kind => :text
    free_response "If you could go back to the beginning of the project, what do you wish you knew?", :kind => :text
  end

  section "Community" do
    free_response "What growth area are you going to emphasize next week?", :kind => :text
    free_response "Did anyone make you feel irritated, offended, or hurt? Who/when/how?", :kind => :text
  end
end
