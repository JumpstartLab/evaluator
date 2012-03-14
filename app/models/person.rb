class Person < ActiveRecord::Base
  has_many :evaluations, inverse_of: :person
  has_many :assignments, through:     :evaluations
  has_many :responses,   class_name: :EvaluationResponse
  has_many :feedbacks,   inverse_of: :evaluator

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
    full_name = [last_name, first_name].select(&:present?).join(', ')

    full_name.empty? ? github_handle : full_name
  end

  def casual_name
    first_name.blank? ? github_handle : first_name
  end

  def full_name
    [first_name, last_name].select(&:present?).join(' ')
  end
end
