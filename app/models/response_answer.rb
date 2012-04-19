class ResponseAnswer < ActiveRecord::Base
  belongs_to :answer#chosen_answer, class_name: :Answer
  belongs_to :question
  belongs_to :response, class_name: :EvaluationResponse

  def value=(value)
    if question.project_url?
      value = value.to_s.strip.downcase
    end
    self.serialized_value = value
  end

  def value
    serialized_value
  end

end
