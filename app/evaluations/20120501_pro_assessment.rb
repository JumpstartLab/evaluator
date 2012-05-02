project_evaluation "Pro Code Review for SonOfStoreEngine" do
  section "1. Object-oriented and general application design (10 points)" do
    free_response "1. Single Responsibility Principle (3)", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "2. Encapsulation (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "3. Don't Repeat Yourself (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "4. You Ain't Gonna Need It (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "5. Rails MVC (3)", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "General comments:", :kind => :text
  end
  section "2. Use of Ruby and Rails idioms and features (6 points)" do
    free_response "1. Leverage Enumerable, Array and Hash (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "2. Take advantage of Ruby standard library (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "3. Leverage deeper Rails features (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "4. Take advantage of Rails plugin gems (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "General comments:", :kind => :text
  end
  section "3. Testing practices and coverage (8 points)" do
    free_response "1. Writing clear, meaningful specs (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "2. Well-written integration specs (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "3. Avoid testing anti-patterns (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "4. Significant but sensible test coverage (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "General comments:", :kind => :text
  end
  section "4. Improvement and evolution of the code, use of refactoring (4 points)" do
    free_response "1. Simplify, clean up, or make more consistent the existing code (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "2. Refactor the design to make it easier to work with or more easily support new features (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "General comments:", :kind => :text
  end
  section "5. Adherence to the intent of non-functional requirements (10 points)" do
    free_response "1. Implement background workers for email, other tasks (3)", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "2. High performance queries (4)", :kind => :integer, :group => :overall_score, :range => (0..4)
    free_response "3. View caching (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "4. Data caching (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "General comments:", :kind => :text
  end
  section "6. Application correctness and robustness (4 points)" do
    free_response "1. User experience (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "2. Corner cases and error conditions outside the happy path (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "General comments:", :kind => :text
  end
end
