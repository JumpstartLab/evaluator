instructor_evaluation "Instructor Assessment for Son of StoreEngine" do
  section "Code Quality" do
    free_response "Good object-oriented and general application design practices, such as SOLID and DRY. (0-8)", :kind => :integer, :group => :overall_score, :range => 0..8
    free_response "Use of Ruby and Rails idioms and features.", :kind => :integer, :group => :overall_score, :range => 0..6
    free_response "Improvement and evolution of the code, use of refactoring. (4 points)", :kind => :integer, :group => :overall_score, :range => 0..4
    free_response "Adherence to the intent of project-specific non-functional requirements, such as background workers and caching. (10 points)", :kind => :integer, :group => :overall_score, :range => 0..10
    free_response "Application correctness and robustness. (4 points)", :kind => :integer, :group => :overall_score, :range => 0..4
    free_response "Security protections against common attacks (4 points)", :kind => :integer, :group => :overall_score, :range => 0..4
  end

  section "User Expectations" do
    description "
    <ul>
      <li>10: All stories pass</li>
      <li>8: One story could not be completed</li>
      <li>5: Two or three stories could not be completed</li>
      <li>2: More than three stories could not be completed</li>
    </ul>"
    free_response "What score did they earn for correctness? (0-3)", :kind => :integer, :group => :overall_score, :range => 0..10
    free_response "If applicable, what problems did you run into?", :kind => :text
  end

  section "Performance" do
    description "
    <ul>
      <li>5: Average under 110ms, and all requests < 200ms</li>
      <li>3: All requests sub 200ms</li>
      <li>2: Average below 200ms</li>
      <li>0: Average over 200ms</li>
    </ul>"
    free_response "What score did they earn for correctness? (0-3)", :kind => :integer, :group => :overall_score, :range => 0..3
    free_response "If applicable, what problems did you run into?", :kind => :text
  end

  section "Testing" do
    description "
    <ul>
      <li>3: Testing suite covers >95% of application code</li>
      <li>2: Testing suite covers 85-94% of application code</li>
      <li>1: Testing suite covers 70-84% of application code</li>
      <li>0: Testing suite covers <70% of application code</li>
    </ul>"
    free_response "What score did they earn for test coverage? (0-3)", :kind => :integer, :group => :overall_score, :range => 0..3
    free_response "Good testing practices and coverage. (6 points)", :kind => :integer, :group => :overall_score, :range => 0..6
    free_response "What was the measured percentage?", :kind => :string
  end

  section "Code Style" do
    description "
    <ul>
      <li></li>
      <li>2: Source code generates no complaints from Cane or Reek</li>
      <li>1: Source code generates five or fewer</li>
      <li>0: Source code generates more than five warnings</li>
    </ul>"
    free_response "What score did they earn for style? (0-3)", :kind => :integer, :group => :overall_score, :range => 0..3
    free_response "If applicable, what problems did you find?", :kind => :text
  end 

  section "User Interface & Design" do
    description "
    <ul>
      <li>4: WOW! This site is beautiful, functional, and clear</li>
      <li>2: Good design and UI that shows work far beyond dropping in a library or Bootstrap</li>
      <li>1: Some basic design work, but doesn't show much effort beyond \"ready to go\" components/frameworks/etc</li>
      <li>0: The lack of design makes the site difficult / confusing to use</li>
    </ul>"
    free_response "What score did they earn for UI/Design? (0-3)", :kind => :integer, :group => :overall_score, :range => 0..3
    free_response "Comments / observations?", :kind => :text
  end
end
