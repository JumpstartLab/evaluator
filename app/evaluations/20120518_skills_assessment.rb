project_evaluation "Skills Assessment 5/18" do
  section "Skills" do
    free_response "1. Class Decomposition", :kind => :integer, :group => :overall_score, :range => (1..3)
    free_response "2. Method Naming & Design", :kind => :integer, :group => :overall_score, :range => (1..3)
    free_response "3. Ruby Syntax", :kind => :integer, :group => :overall_score, :range => (1..3)
    free_response "4. Debugging", :kind => :integer, :group => :overall_score, :range => (1..3)
    free_response "5. Working with Documentation", :kind => :integer, :group => :overall_score, :range => (1..3)
    free_response "6. System & Tools (CLI, git, etc)", :kind => :integer, :group => :overall_score, :range => (1..3)
    free_response "General comments:", :kind => :text
  end
end
