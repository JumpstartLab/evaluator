evaluation "Self-Assessment for 4/27/12" do
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
    free_response "What's been better/worse/different about your four person team?", :kind => :text
    free_response "What do you expect to see from your group on Wednesday?", :kind => :text
  end

  section "Content" do
    free_response "What are you excited about tackling in the next few days?", :kind => :text
    free_response "What's something that is easier than you expected?", :kind => :text
  end

  section "Community" do
    free_response "Who caught your attention this week with an insightful idea, question, or explanation? What was it about?", :kind => :text
    free_response "Did anyone make you feel irritated, offended, or hurt? Who/when/how?", :kind => :text
  end
end
