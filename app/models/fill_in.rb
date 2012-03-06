class FillIn < Question

  def to_partial_path
    "questions/fill_in"
  end

  def answer
    answers.first
  end

  def answer=(value)
    answers << value
  end

end

