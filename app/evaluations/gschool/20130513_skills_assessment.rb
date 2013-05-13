instructor_evaluation "Skills Assessment 5/13" do
  section "Skills" do
    free_response "1. Ruby Syntax & API", :kind => :integer, :group => :overall_score, :range => (0..4)
    free_response "2. Ruby Style", :kind => :integer, :group => :overall_score, :range => (0..4)
    free_response "3. Blocks & Enumerations", :kind => :integer, :group => :overall_score, :range => (0..4)
    free_response "4. Testing", :kind => :integer, :group => :overall_score, :range => (0..4)
    free_response "5. Workflow", :kind => :integer, :group => :overall_score, :range => (0..4)
    free_response "6. Responding to Feedback / Collaboration", :kind => :integer, :group => :overall_score, :range => (0..4)
    free_response "General comments:", :kind => :text
  end
end
