instructor_evaluation "Instructor Assessment for Daughter of StoreEngine" do
  section "Models" do
    description "
    <ul>
      <li>4: All models have methods and code solely related to it's own function</li>
      <li>3: One or more models contain code better suited for a different object or helper</li>
      <li>2: Two or more models contain code better suited for a different object or helper</li>
      <li>1: Four or more models contain code better suited for a different object or helper</li>
      <li>0: Eight or more models contain code better suited for a different object or helper</li>
    </ul>"
    free_response "What score did they earn? (0-4)", :kind => :integer, :group => :overall_score, :range => 0..4
    free_response "If applicable, what problems did you run into?", :kind => :text
  end

  section "Controllers" do
    description "
      <li>4: All controller actions, before filters, and helper methods are clear and succinct</li>
      <li>3: One or more controllers contain code that is complex, better suited for a different object or helper</li>
      <li>2: Two or more controllers contain code that is complex, better suited for a different object or helper</li>
      <li>1: Four or more controllers contain code that is complex, better suited for a different object or helper</li>
      <li>0: Eight or more controllers contain code that is complex, better suited for a different object or helper</li>
    "
    free_response "What score did they earn? (0-4)", :kind => :integer, :group => :overall_score, :range => 0..4
    free_response "If applicable, what problems did you run into?", :kind => :text
  end

  section "Views and Templates" do
    description "
      <li>4: All view templates are well defined, use appropriate partials, and free of 'heavy' lifting ruby code</li>
      <li>3: One or more view templates contain code that belongs in its own partial, helper, or controller action</li>
      <li>2: Two or more view templates contain code that belongs in its own partial, helper, or controller action</li>
      <li>1: Four or more view templates contain code that belongs in its own partial, helper, or controller action</li>
      <li>0: Eight or more view templates contain code that belongs in its own partial, helper, or controller action</li>
    "
    free_response "What score did they earn? (0-4)", :kind => :integer, :group => :overall_score, :range => 0..4
    free_response "If applicable, what problems did you run into?", :kind => :text
  end

  section "Feature Tests" do
    description "
      <li>4: Feature tests and unit tests exist for all features</li>
      <li>3: One or more features are not tested or tested well</li>
      <li>2: Two or more features are not tested or tested well</li>
      <li>1: Four or more features are not tested or tested well</li>
      <li>0: Eight or more features are not tested or tested well</li>
    "
    free_response "What score did they earn? (0-4)", :kind => :integer, :group => :overall_score, :range => 0..4
    free_response "If applicable, what problems did you run into?", :kind => :text
  end

  section "Code Hygiene" do
    description "
      <li>4: All application code and tests adheres to a consistent style and format</li>
      <li>3: Two or more instances within the application that are not consistent with the defined conventions</li>
      <li>2: Four or more instances within the application that are not consistent with the defined conventions</li>
      <li>1: Eight or more instances within the application that are not consistent with the defined conventions</li>
      <li>0: Sixteen or more instances within the application that are not consistent with the defined conventions</li>
    "
    free_response "What score did they earn? (0-4)", :kind => :integer, :group => :overall_score, :range => 0..4
    free_response "If applicable, what problems did you run into?", :kind => :text
  end

  section "Feature Complete" do
    description "
      <li>4: All stories that completed for the client deliver the described functionality</li>
      <li>3: One or more features no longer are functional or do not deliver on the expected functionality</li>
      <li>2: Two or more features no longer are functional or do not deliver on the expected functionality</li>
      <li>1: Four or more features no longer are functional or do not deliver on the expected functionality</li>
      <li>0: Eight or more features no longer are functional or do not deliver on the expected functionality</li>
    "
    free_response "What score did they earn? (0-4)", :kind => :integer, :group => :overall_score, :range => 0..4
    free_response "If applicable, what problems did you run into?", :kind => :text
  end

end