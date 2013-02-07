evaluation "Self-Assessment for 4/20/12" do
  section "You" do
    pick_one "How happy are you with your progress to this point?" do
      option "Far Surpassing Expectations"
      option "Exceeding Expectations"
      option "Meeting Expectations"
      option "Below Expectations"
      option "Significantly Below Expectations"
    end

    free_response "Why / How?", kind: :text
  end

  section "Project Work" do
    free_response "What's something that surprised you about working on StoreEngine?", :kind => :text
    free_response "What's still confusing / bothering you?", :kind => :text
  end

  section "Content" do
    free_response "What's something you look forward to using/working with in future projects?", :kind => :text
    free_response "Drop some love/hate on Jeff/Matt:", :kind => :text
  end

  section "Community" do
    free_response "Who caught your attention this week with an insightful idea, question, or explanation? What was it about?", :kind => :text
    free_response "Did anyone make you feel irritated, offended, or hurt? Who/when/how?", :kind => :text
  end

  section "Effort & Work" do
    free_response "What are you struggling with or neglecting?", :kind => :text
    free_response "What are you doing well on so far?", :kind => :text
  end
end
