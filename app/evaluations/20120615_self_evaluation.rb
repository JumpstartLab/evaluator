evaluation "Self-Assessment for 6/15/12" do
  section "You" do
    pick_one "How happy were you with your chat app progress?" do
      option "Psyched"
      option "Good"
      option "OK"
      option "Frustrated"
      option "Disappointed"
      option "RAWRWTFRAWR"
    end

    free_response "Why / How?", kind: :text
  end

  section "Effort & Work" do
    free_response "What did you most recently master? How?", :kind => :text
    free_response "What skills still scare you?", :kind => :text
  end

  section "Project Work" do
    free_response "What responsibilities have you taken on in your team? Was it on purpose?", :kind => :text
    free_response "What are you most proud of in your current project?", :kind => :text
  end

  section "Community" do
    free_response "What has been your favorite part of HA so far?", :kind => :text
    free_response "What has been your least favorite? What would you do differently?", :kind => :text
    free_response "Did anyone make you feel irritated, offended, or hurt? Who/when/how?", :kind => :text
  end

  section "Things of Import" do
    free_response "Who is your favorite comic book character?", :kind => :string
    free_response "If LivingSocial gave you August as paid time off, what would you do?", :kind => :text
  end
end
