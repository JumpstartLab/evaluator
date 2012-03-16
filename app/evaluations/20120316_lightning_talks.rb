evaluation "Lightning Talk Assessment" do
  section "Basics" do
    question "Whose talk are you assessing?" do
      free_response :string
    end

    question "What is the talk about?" do
      free_response :string
    end
  end

  section "The Talk" do
    question "What score did they earn for theme?" do
      free_response :integer
    end

    question "What score did they earn for quality?" do
      free_response :integer
    end

    question "What score did they earn for effort/performance?" do
      free_response :integer
    end
  end

  section "Overarching" do
    question "Any feedback/tips to share with them?" do
      free_response :text
    end

    question "Did they \"Live Hungry\"?" do
      free_response :text
    end
  end
end