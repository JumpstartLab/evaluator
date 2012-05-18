evaluation "Self-Assessment for 5/18/12" do
  section "You" do
    pick_one "How were you feeling after your checkpoint yesterday?" do
      option "Proud"
      option "OK"
      option "Frustrated"
      option "Disappointed"
      option "Pissed"      
    end

    free_response "Why / How?", kind: :text
  end

  section "Effort & Work" do
    free_response "What are you struggling with or neglecting?", :kind => :text
    free_response "What are you doing well?", :kind => :text
  end

  section "Project Work" do
    free_response "What role(s)/responsibilities have you taken within the team?", :kind => :text
    free_response "What's been working well with your new team?", :kind => :text
    free_response "What is the team struggling with?", :kind => :text
  end

  section "Content" do
    free_response "What did you think of the Securing an API session this week?", :kind => :text
    free_response "What did you think of the Consuming an API session this week?", :kind => :text
  end

  section "Community" do
    free_response "Who caught your attention this week with an insightful idea, question, or explanation? What was it about?", :kind => :text
    free_response "Did anyone make you feel irritated, offended, or hurt? Who/when/how?", :kind => :text
  end
end
