class Feedback < ActiveRecord::Base
  belongs_to :evaluator, class_name: :Person, inverse_of: :feedbacks
  belongs_to :response,  class_name: :EvaluationResponse, inverse_of: :feedbacks, foreign_key: :evaluation_response_id

  attr_accessible :remarks

  validates :remarks, presence: true

  def give_from(person)
    self.evaluator = person
    if save
      PeopleMailer.feedback(self).deliver
    end
  end

  def target_title
    response.evaluation.title
  end

  def recipient
    response.person
  end
end
