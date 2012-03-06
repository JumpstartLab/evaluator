class Option < Answer
  store :metadata, accessors: [:exclusive, :correct]

  def to_partial_path
    prefix = exclusive? ? "exclusive_" : nil
    "answers/#{prefix}#{question.pick}_option"
  end

  def exclusive?
    question.pick == :any && exclusive
  end
end
