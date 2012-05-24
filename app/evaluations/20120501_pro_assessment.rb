project_evaluation "Code Review for FeedEngine" do
  section "1. Object-oriented and general application design (10 points)" do
    free_response "1. Single Responsibility Principle (3)", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "2. Encapsulation (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "3. Don't Repeat Yourself (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "4. You Ain't Gonna Need It (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "5. Rails MVC (3)", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "General comments:", :kind => :text
  end
  section "2. Use of Ruby and Rails idioms and features (8 points)" do
    free_response "1. Leverage Enumerable, Array and Hash (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "2. Take advantage of Ruby standard library (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "3. Leverage deeper Rails features (3)", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "4. Authorization techniques, including scoping (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "5. Take advantage of Rails plugin gems (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "General comments:", :kind => :text
  end
  section "3. Testing practices and coverage (10 points)" do
    free_response "1. Writing clear, meaningful specs (3)", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "2. Well-written integration specs (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "3. Avoid testing anti-patterns (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "4. Significant but sensible test coverage (3)", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "General comments:", :kind => :text
  end
  section "4. Adherence to the intent of non-functional requirements (10 points)" do
    free_response "1. Implement background workers for email, other tasks (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "2. Well-written and integrated API gem (4)", :kind => :integer, :group => :overall_score, :range => (0..4)
    free_response "3. High performance queries (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "4. View caching (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "5. Data caching (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "General comments:", :kind => :text
  end
  section "5. Application correctness and robustness (4 points)" do
    free_response "1. User experience (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "2. Corner cases and error conditions outside the happy path (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "General comments:", :kind => :text
  end
end
