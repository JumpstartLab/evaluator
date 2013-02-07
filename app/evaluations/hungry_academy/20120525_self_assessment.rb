evaluation "Self-Assessment for 5/25/12" do
  section "You" do
    pick_one "How happy were you with your FeedEngine submission?" do
      option "Best Thing Ever"
      option "Proud"
      option "OK"
      option "Frustrated"
      option "Disappointed"
      option "Pissed"      
    end

    free_response "Why / How?", kind: :text
  end

  section "Effort & Work" do
    free_response "How did you grow during this project? What did you tackle that was difficult?", :kind => :text
    free_response "What are you feeling really comfortable with?", :kind => :text
  end

  section "Project Work" do
    free_response "What role(s)/responsibilities will you take on in your new team?", :kind => :text
    free_response "If you had an extra two days, how would you change/add to your project?", :kind => :text
  end

  section "Community" do
    free_response "Who are you most excited to interact with on a daily basis?", :kind => :text
    free_response "Did anyone make you feel irritated, offended, or hurt? Who/when/how?", :kind => :text
  end
end
