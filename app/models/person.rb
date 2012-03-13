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

  def to_param
    github_handle
  end

  def to_s
    full_name = [last_name, first_name].select{|name| name.present? }.join(', ')

    full_name.empty? ? github_handle : full_name
  end
end
