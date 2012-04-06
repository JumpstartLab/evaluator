evaluation "Self-Assessment for 4/6/12" do
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
    free_response "How is StoreEngine going?", :kind => :text
    free_response "Any lessons learned from your last pairing that you've applied to this one?", :kind => :text
  end

  section "Content" do
    free_response "What's something you learned this week?", :kind => :text
    free_response "What's something that's still confusing?", :kind => :text
  end

  section "Community" do
    free_response "How did you enjoy working with and around your peers this week?", :kind => :text
    free_response "Did anyone have an exceptionally positive impact on you? Who/how?", :kind => :text
    free_response "Did anyone make you feel irritated, offended, or hurt? Who/when/how?", :kind => :text
  end

  section "Effort & Work" do
    free_response "What did you do well this week?", :kind => :text
    free_response "What could you have done better?", :kind => :text
    free_response "What did Jeff/Matt do well this week?", :kind => :text
    free_response "What could Jeff/Matt have done better?", :kind => :text
  end
end
