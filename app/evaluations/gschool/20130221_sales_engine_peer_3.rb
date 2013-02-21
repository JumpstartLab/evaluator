project_evaluation "Peer Assessment for SalesEngine - 3" do
  section "Correctness" do
    free_response "What score did they earn for correctness?", :kind => :integer, :group => :overall_score, :range => (0..4)
    free_response "If applicable, what problems did you run into?", :kind => :text
  end

  section "Testing" do
    free_response "What score did they earn for test coverage?", :kind => :integer, :group => :overall_score, :range => (0..4)
    free_response "If applicable, what problems did you run into?", :kind => :text
  end

  section "Style" do
    free_response "What score did they earn for style?", :kind => :integer, :group => :overall_score, :range => (0..4)
    free_response "If applicable, what problems did you run into?", :kind => :text
  end 

  section "Effort" do
    free_response "What score did they earn for effort?", :kind => :integer, :group => :overall_score, :range => (0..5)
    free_response "If applicable, what problems did you run into?", :kind => :text
  end

  section "Overall" do
    free_response "Any closing thoughts/recommendations?", :kind => :text
  end
end
