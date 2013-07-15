instructor_evaluation "Skills Assessment 7/1/2013" do
  section "Skills" do
    free_response "1. Ruby Syntax & API", :kind => :integer, :group => :overall_score, :range => (0..4)
    free_response "2. Ruby Style", :kind => :integer, :group => :overall_score, :range => (0..4)
    free_response "3. Rails Syntax & API", :kind => :integer, :group => :overall_score, :range => (0..4)
    free_response "4. Rails Style", :kind => :integer, :group => :overall_score, :range => (0..4)
    free_response "5. Testing", :kind => :integer, :group => :overall_score, :range => (0..4)
    free_response "6. Workflow", :kind => :integer, :group => :overall_score, :range => (0..4)
    free_response "7. Responding to Feedback / Collaboration", :kind => :integer, :group => :overall_score, :range => (0..4)
    free_response "General comments:", :kind => :text
  end
end
