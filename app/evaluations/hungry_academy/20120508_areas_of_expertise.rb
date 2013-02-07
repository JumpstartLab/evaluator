evaluation "Areas of Expertise" do
  description "For each of the areas below, rate your level of comfort from 0 (totally uncomfortable) to 4 (totally comfortable)"
  section 'Expertise Rankings' do
    free_response "User Interface / Front-End", :kind => :integer, :range => (0..4)
    free_response "JavaScript", :kind => :integer, :range => (0..4)
    free_response "Data Modeling/Database", :kind => :integer, :range => (0..4)
    free_response "Testing", :kind => :integer, :range => (0..4)
    free_response "Refactoring", :kind => :integer, :range => (0..4)
    free_response "Handling errors & validation", :kind => :integer, :range => (0..4)
    free_response "Background Workers", :kind => :integer, :range => (0..4)
    free_response "Performance", :kind => :integer, :range => (0..4)
    free_response "Stories/Tracker", :kind => :integer, :range => (0..4)
    free_response "Git & Source Management", :kind => :integer, :range => (0..4)
    free_response "Deployment", :kind => :integer, :range => (0..4)
  end

  section 'Notes' do
    free_response "What's your favorite of the above? Why?", :kind => :text
    free_response "What's your LEAST favorite of the above? Why?", :kind => :text
  end
end