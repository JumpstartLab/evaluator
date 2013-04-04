project_evaluation "Instructor Assessment for StoreEngine" do
  section "Correctness" do
    free_response "What score did they earn for correctness? (0-3)", :kind => :integer, :group => :overall_score, :range => 0..3
    free_response "If applicable, what problems did you run into?", :kind => :text
  end

  section "Testing" do
    free_response "What score did they earn for test coverage? (0-3)", :kind => :integer, :group => :overall_score, :range => 0..3
    free_response "What was the measured percentage?", :kind => :string
  end

  section "Code Style" do
    free_response "What score did they earn for style? (0-3)", :kind => :integer, :group => :overall_score, :range => 0..3
    free_response "If applicable, what problems did you find?", :kind => :text
  end 

  section "Effort" do
    free_response "What score did they earn for effort? (0-4)", :kind => :integer, :group => :overall_score, :range => 0..4
    free_response "Did they surpass expectations? If so, how?", :kind => :text
  end

  section "User Interface & Design" do
    free_response "What score did they earn for UI/Design? (0-3)", :kind => :integer, :group => :overall_score, :range => 0..3
    free_response "Comments / observations?", :kind => :text
  end

  section "Surprise" do
    free_response "What score did they earn for S&D? (0-2)", :kind => :integer, :group => :overall_score, :range => 0..3
    free_response "Comments / observations?", :kind => :text
  end
end
