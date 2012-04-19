evaluation "Peer Assessment for StoreEngine" do
  section "Who You're Reviewing" do
    free_response "Enter the \"Git Read-Only\" URL for the project", :type => :string
  end

  section "Correctness" do
    free_response "What score did they earn for correctness? (0-3)", :type => :integer
    free_response "If applicable, what problems did you run into?", :type => :text
  end

  section "Testing" do
    free_response "What score did they earn for test coverage? (0-3)", :type => :integer
    free_response "What was the measured percentage?", :type => :string
  end

  section "Code Style" do
    free_response "What score did they earn for style? (0-3)", :type => :integer
    free_response "If applicable, what problems did you find?", :type => :text
  end 

  section "Live Hungry" do
    free_response "What score did they earn for effort? (0-4)", :type => :integer
    free_response "Did they \"Live Hungry\"? If so, how?", :type => :text
  end

  section "User Iterface & Design" do
    free_response "What score did they earn for UI/Design? (0-3)", :type => :integer
    free_response "Comments / observations?", :type => :text
  end

  section "Surprise & Delight" do
    free_response "What score did they earn for S&D? (0-2)", :type => :integer
    free_response "Comments / observations?", :type => :text
  end

  section "Recognize Others" do
    free_response "Would you like to recognize anyone for helping with *your* project? Enter their github username:", :type => :string
    free_response "How many points would you award them? (Max: 2)", :type => :integer
    free_response "If you only allocated one point previously, you may award one point to another person. Enter their github username:", :type => :string
    free_response "Notes", :type => :text
  end
end