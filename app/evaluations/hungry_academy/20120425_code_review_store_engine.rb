code_review "mattyoho", "Code Review for StoreEngine" do
  section "Object-oriented and general app design" do
    free_response "Score", kind: :integer, group: :overall_score, range: (0..1)
    free_response "Notes and feedback", kind: :text
  end

  section "Ruby and Rails idioms/features" do
    free_response "Score", kind: :integer, group: :overall_score, range: (0..1)
    free_response "Notes and feedback", kind: :text
  end

  section "Testing practices and coverage" do
    free_response "Score", kind: :integer, group: :overall_score, range: (0..1)
    free_response "Notes and feedback", kind: :text
  end

  section "Non-functional requirements" do
    free_response "Score", kind: :integer, group: :overall_score, range: (0..1)
    free_response "Notes and feedback", kind: :text
  end

  section "Application correctness and robustness" do
    free_response "Score", kind: :integer, group: :overall_score, range: (0..1)
    free_response "Notes and feedback", kind: :text
  end
end
