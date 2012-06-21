evaluation "Team Assessment for SOD / Chat" do
  section 'Project Retrospective' do
    free_response "What went well during the project?", :kind => :text
    free_response "What went poorly during the project?", :kind => :text
    free_response "Describe a learning experience that you've taken away from the project. It can be related to programming, working with a team, process management, or other.", :kind => :text
  end

  section 'Teammate Feedback' do
    description <<-DES
For each of your teammates, describe what it was like working with them on this project.

Talk about their communication style, the contributions, and where they fell down. Talk about ways in which you succeeded or struggled in working with them, and how you interacted.
    DES
  end

  section "Teammate 1" do
    free_response "Teammate name:", :kind => :string
    free_response "Describe your experience.", :kind => :text
  end

  section "Teammate 2" do
    free_response "Teammate name:", :kind => :string
    free_response "Describe your experience.", :kind => :text
  end

  section "Teammate 3" do
    free_response "Teammate name:", :kind => :string
    free_response "Describe your experience.", :kind => :text
  end
end
