class FreeResponse < Answer
  store :metadata, accessors: [:kind, :code]

  validates :kind, inclusion: [:string, :text, :integer, :float, :url, :code]

  def to_partial_path
    "answers/free_response"
  end

  def kind
    metadata[:kind] || :string
  end

  def string?
    !text?
  end

  def text?
    kind == :text
  end

  def url?
    kind == :url
  end
end
