project_evaluation "Code Review for SOD with Chat" do
  section "A. Application Decomposition" do
    free_response "1. Single Responsibility per Application", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "2. Use of well-defined communication point(s) between apps", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "3. Use of Ruby wrappers to encapsulate separations", :kind => :integer, :group => :overall_score, :range => (0..3)
  end

  section "B. Testing" do
    free_response "1. Numeric Ruby test coverage", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "2. General testing style", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "3. Separation of systems under test (doubles, stubs, etc)", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "4. Tests at multiple abstraction levels", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "5. Testing all parts of the application (Ruby, JS, etc)", :kind => :integer, :group => :overall_score, :range => (0..3)
  end

  section "C. Tools & Style" do
    free_response "1. Rails MVC - right work in the right place", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "2. Attention to security", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "3. Using external gems effectively", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "4. Cane/Reek automated metrics", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "5. Ruby style & SRP", :kind => :integer, :group => :overall_score, :range => (0..3)
  end

  section "D. Notes" do
    free_response "Additional notes", :kind => :text
  end
end
