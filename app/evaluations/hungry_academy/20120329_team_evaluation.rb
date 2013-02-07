evaluation "Team Self-Assessment" do
  section "Who You're Reviewing" do
    question "Who was your partner? Enter their github username:" do
      free_response :string
    end
  end

  section "Live Hungry" do
    question "Did your teammate pull their weight? Explain." do
      free_response :text
    end
  end

  section "Cohesion" do
    question "Did your teammate pull you up or pull you down? How/why?" do
      free_response :text
    end
  end

  section "Trust" do
    question "Were you able to trust their work? Did they do things when they said they'd do them?" do
      free_response :text
    end
  end

  section "Overall" do
    question "If you could rewind to the beginning of last week, what would you tell yourself about working with your pair?" do
      free_response :text
    end

    question "Anything else on your mind?" do
      free_response :text
    end
  end
end