class ResponseAnswer < ActiveRecord::Base
  belongs_to :answer#chosen_answer, class_name: :Answer
  belongs_to :question
  belongs_to :response, class_name: :EvaluationResponse

  def value=(value)
    self.serialized_value = Marshal.dump(value)
  end

  def value
    Marshal.load(serialized_value) if serialized_value
  end

end
