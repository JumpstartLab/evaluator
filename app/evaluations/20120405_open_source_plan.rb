evaluation "Open Source Plan for Week of 4/5/12" do
  section "Last Week" do
    question "How well did your open source work go last week?" do
      pick(:one) do
        option "Amazing"
        option "Good"
        option "Not So Good"
        option "Disaster"
      end
    end

    question "How do you know? Did you achieve your stated goal?" do
      free_response :text
    end

    question "How will your experience from last week influence your plan/work this week?" do
      free_response :text
    end
  end

  section "Plan" do
    question "What's the Github URL for the project you want to work on?" do
      free_response :string
    end

    question "What do you expect to accomplish in your work time?" do
      free_response :text
    end

    question "How do you know it's worth working on? (issues, needs, etc)" do
      free_response :text
    end

    question "How will you measure your success?" do
      free_response :text
    end
  end
end
