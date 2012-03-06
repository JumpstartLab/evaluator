class Person < ActiveRecord::Base
  has_many :evaluations
  has_many :assignments, :through => :evaluations
  has_many :responses, class_name: :EvaluationResponse

  def response_for(evaluation)
    responses.find {|r| r.evaluation_id.eql?(evaluation.id) }
  end

  def to_s
    [last_name, first_name].join(', ')
  end
end
