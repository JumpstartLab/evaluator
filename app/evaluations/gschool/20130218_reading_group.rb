evaluation "Eloquent Ruby RG1" do
  section "Group Member 1" do
    free_response "What's the URL of the specific blog entry you're reviewing?", kind: :string

    pick_one "How interesting was their article?" do
      option "1. WOW"
      option "2. Solid"
      option "3. Boring"
      option "4. What article?"
    end

    free_response "Why?", kind: :text
  end

  section "Group Member 2" do
    free_response "What's the URL of the specific blog entry you're reviewing?", kind: :string

    pick_one "How interesting was their article?" do
      option "1. WOW"
      option "2. Solid"
      option "3. Boring"
      option "4. What article?"
    end

    free_response "Why?", kind: :text
  end

  section "Group Member 3" do
    free_response "What's the URL of the specific blog entry you're reviewing?", kind: :string

    pick_one "How interesting was their article?" do
      option "1. WOW"
      option "2. Solid"
      option "3. Boring"
      option "4. What article?"
    end

    free_response "Why?", kind: :text
  end
end
