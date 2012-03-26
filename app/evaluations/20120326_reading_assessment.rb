evaluation "Reading Assessment for HTML & CSS" do
  section "Peer Review" do
    question "Which chapter(s) are you reviewing?" do
      free_response :string
    end

    Person.students.each do |person|
      question "Score for #{person} (0-3)", github_handle: person.github_handle,
                                            person_id:     person.id do
        free_response :integer
      end
    end
  end

  section "Exemplars" do
    question "Which solutions (max: 2) were the best?" do
      free_response :text
    end
  end
end
