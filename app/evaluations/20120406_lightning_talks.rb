lightning_talk_evaluation "mattyoho", "Lightning Talk Assessment - 4/6" do
  section "The Talk" do
    free_response "What is the talk about?", :kind => :string
    free_response "What score did they earn for theme?" , :kind => :integer
    free_response "What score did they earn for quality?", :kind => :integer
    free_response "What score did they earn for effort/performance?", :kind => :integer
  end

  section "Overarching" do
    free_response "Any feedback/tips to share with them?", :kind => :text
    free_response "Did they \"Live Hungry\"?", :kind => :string
  end
end
