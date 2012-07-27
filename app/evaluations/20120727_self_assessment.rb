evaluation "Self-Assessment for 7/27/12" do
  section "You" do
    pick_one "How happy were you with your overall performance?" do
      option "Ecstatic"
      option "Proud"
      option "OK"
      option "Disappointed"
      option "Frustrated"
    end

    free_response "Why / How?", kind: :text
  end

  section "Project Work" do
    free_response "What did you do best during the projects?", :kind => :text
    free_response "If you had one more project, what would you want to focus on?", :kind => :text
  end

  section "Effort & Work" do
    free_response "How did your planning/scheduling/self-management work out?", :kind => :text
    free_response "If you could go back to the beginning of the class, what do you wish you knew?", :kind => :text
  end

  section "Structural" do
    free_response "What activity or process do you wish we did MORE of?", :kind => :text
    free_response "What do you wish we did LESS of?", :kind => :text
  end

  section "Community" do
    free_response "What will you take away from your peers? Any particular examples?", :kind => :text
    free_response "Would you like to give any shoutouts?", :kind => :text
  end

  section "Future" do
    free_response "How prepared do you feel for your new job?", :kind => :text
    free_response "What will you focus on learning/practicing in the next few months?", :kind => :text
  end
end
