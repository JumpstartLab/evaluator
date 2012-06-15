lightning_talk_evaluation "group 2", "Lightning Talk Assessment - 6/15" do
  description <<-DES
Categories:

Theme - Was the talk cohesive around a central idea?
Quality - Accuracy, detail, design
Effort - Performance/speaking, effort put in to preparation, living hungry

1: Lame
2: Fine
3: Good (default)
4: Great
5: Above & Beyond
  DES

  section "The Talk" do
    free_response "What is the talk about?", :kind => :string
    free_response "What score did they earn for theme?" , :kind => :integer, :group => :overall_score, :range => (1..5)
    free_response "What score did they earn for quality?", :kind => :integer, :group => :overall_score, :range => (1..5)
    free_response "What score did they earn for effort/performance?", :kind => :integer, :group => :overall_score, :range => (1..5)
  end

  section "Overarching" do
    free_response "Any feedback/tips to share with them?", :kind => :text
    free_response "Did they \"Live Hungry\"?", :kind => :string
  end
end
