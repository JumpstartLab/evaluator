evaluation "Open Source Plan for Week of 4/5/12" do
  section "Last Week" do
    pick_one "How well did your open source work go last week?" do
      option "Amazing"
      option "Good"
      option "Not So Good"
      option "Disaster"
    end

    free_response "How do you know? Did you achieve your stated goal?", :kind => :text
    free_response "How will your experience from last week influence your plan/work this week?", :kind => :text
  end

  section "Plan" do
    free_response "What's the Github URL for the project you want to work on?", :kind => :text
    free_response "What do you expect to accomplish in your work time?", :kind => :text
    free_response "How do you know it's worth working on? (issues, needs, etc)", :kind => :text
    free_response "How will you measure your success?", :kind => :text
  end
end
