class Person < ActiveRecord::Base
  has_many :evaluations
  has_many :assignments, :through => :evaluations
  has_many :responses, class_name: :EvaluationResponse

  attr_accessible :first_name, :last_name, :email

  def response_for(evaluation)
    responses.in_response_to(evaluation).first
  end

  def completed_response_for(evaluation)
    responses.completed_in_response_to(evaluation).first
  end

  def to_s
    [last_name, first_name].join(', ')
  end
end
