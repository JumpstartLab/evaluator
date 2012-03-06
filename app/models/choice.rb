class Choice < Question
  store :metadata, accessors: [:kind]

  def to_partial_path
    "questions/choice"
  end

  def kind
    metadata[:kind] || :one
  end
end
