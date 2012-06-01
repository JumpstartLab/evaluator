evaluation "Self-Assessment for 6/1/12" do
  section "You" do
    pick_one "How happy were you with your chat app progress?" do
      option "Psyched"
      option "Good"
      option "OK"
      option "Frustrated"
      option "Disappointed"
      option "RAWRWTFRAWR"
    end

    free_response "Why / How?", kind: :text
  end

  section "Effort & Work" do
    free_response "What have you learned about yourself through the first four months?", :kind => :text
    free_response "What habits or gaps are you trying to overcome in the next two months?", :kind => :text
  end

  section "Project Work" do
    free_response "What role(s)/responsibilities will you take on in your new team?", :kind => :text
    free_response "What feature are you most scared of?", :kind => :text
  end

  section "Community" do
    free_response "What was your favorite part of the last week?", :kind => :text
    free_response "What were your reactions to the State of the Union talk?", :kind => :text
    free_response "Did anyone make you feel irritated, offended, or hurt? Who/when/how?", :kind => :text
  end
end
