evaluation "Self-Assessment for 4/12/12" do
  section "You" do
    pick_one "How is the program matching your expectations?" do
      option "Far Surpassing"
      option "Exceeding"
      option "Meeting"
      option "Underwhelming"
      option "Very Underwhelming"
    end

    free_response "Why? How?", kind: :text
  end

  section "Project Work" do
    free_response "What's your favorite part of StoreEngine?", :kind => :text
    free_response "What's been the hardest?", :kind => :text
  end

  section "Content" do
    free_response "What's something you learned this week?", :kind => :text
    free_response "What's something that's still confusing?", :kind => :text
  end

  section "Community" do
    free_response "Who caught your attention this week with an insightful idea, question, or explanation? What was it about?", :kind => :text
    free_response "Did anyone make you feel irritated, offended, or hurt? Who/when/how?", :kind => :text
  end

  section "Effort & Work" do
    free_response "Have you 'settled in' to an efficient schedule? How/why?", :kind => :text
    free_response "What are you proud of from your work so far?", :kind => :text
    free_response "What's something Jeff/Matt could have done better?", :kind => :text
  end
end
