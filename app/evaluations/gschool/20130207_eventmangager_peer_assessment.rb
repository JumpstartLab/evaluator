project_evaluation "Peer Assessment for EventReporter" do
  section "Correctness" do
    free_response "What score did they earn for correctness?", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "If applicable, what problems did you run into?", :kind => :text
  end

  section "Style" do
    free_response "What score did they earn for style?", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "If applicable, what problems did you run into?", :kind => :text
  end

  section "Effort" do
    free_response "What score did they earn for effort?", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "If applicable, what problems did you run into?", :kind => :text
  end

  section "Wrapup" do
    free_response "Any closing thoughts/recommendations?", :kind => :text
  end
end