instructor_evaluation "Instructor Assessment for StoreEngine" do
  section "Correctness" do
    description "
    <ul>
      <li>3: All provided stories pass</li>
      <li>2: One story could not be completed</li>
      <li>1: Two or three stories could not be completed</li>
      <li>0: More than three stories could not be completed</li>
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
    free_response "What was the measured percentage?", :kind => :string
  end

  section "Code Style" do
    description "
    <ul>
      <li>3: Source code generates no complaints from Cane or Reek</li>
      <li>2: Source code generates three or fewer warnings</li>
      <li>1: Source code generates four to eight warnings</li>
      <li>0: Source code generates more than eight warnings</li>
    </ul>"
    free_response "What score did they earn for style? (0-3)", :kind => :integer, :group => :overall_score, :range => 0..3
    free_response "If applicable, what problems did you find?", :kind => :text
  end 

  section "Effort" do
    description "
    <ul>
      <li>4: Program fulfills all Base Expectations and four Extensions</li>
      <li>3: Program fulfills all Base Expectations and two Extensions</li>
      <li>2: Program fulfills all Base Expectations</li>
      <li>1: Program is missing 1-3 features from the Base Expectations</li>
      <li>0: Program is missing more than three features from the Base Expectations</li>
    </ul>"
    free_response "What score did they earn for effort? (0-4)", :kind => :integer, :group => :overall_score, :range => 0..4
    free_response "Did they surpass expectations? If so, how?", :kind => :text
  end

  section "User Interface & Design" do
    description "
    <ul>
      <li>3: WOW! This site is beautiful, functional, and clear</li>
      <li>2: Good design and UI that shows work far beyond dropping in a library or Bootstrap</li>
      <li>1: Some basic design work, but doesn't show much effort beyond \"ready to go\" components/frameworks/etc</li>
      <li>0: The lack of design makes the site difficult / confusing to use</li>
    </ul>"
    free_response "What score did they earn for UI/Design? (0-3)", :kind => :integer, :group => :overall_score, :range => 0..3
    free_response "Comments / observations?", :kind => :text
  end

  section "Surprise" do
    description "
    <ul>
      <li>2: A great idea that's well executed and enhances the shopping experience</li>
      <li>1: An extra feature that makes things a little nicer, but doesn't blow your mind</li>
      <li>0: No surprise. Sad face :(</li>
    </ul>"
    free_response "What score did they earn for S&D? (0-2)", :kind => :integer, :group => :overall_score, :range => 0..3
    free_response "Comments / observations?", :kind => :text
  end
end
