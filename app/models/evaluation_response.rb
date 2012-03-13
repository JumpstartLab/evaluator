require 'securerandom'

class EvaluationResponse < ActiveRecord::Base
  belongs_to :person
  belongs_to :evaluation, include: :questions

  has_many :answers, class_name: :ResponseAnswer, dependent: :destroy

  accepts_nested_attributes_for :answers

  after_initialize :set_access_code
  after_create :set_up_answers

  def self.incomplete
    where(completed_at: nil)
  end

  def self.complete
    where("#{table_name}.completed_at IS NOT NULL")
  end

  def self.in_response_to(evaluation)
    where(evaluation_id: evaluation.id)
  end

  def self.completed_in_response_to(evaluation)
    complete.in_response_to(evaluation)
  end

  def complete?
    completed_at
  end

  def to_param
    access_code
  end

  def submit(attributes={})
    return false if completed?

    self.attributes = attributes.merge(submitted_at: Time.zone.now)
    save
  end

  def answer_for(question)
    answers.find {|a| a.question == question }
  end

  private

  def set_access_code
    unless access_code
      self.access_code = SecureRandom.hex
    end
  end

  def set_up_answers
    evaluation.questions.in_order.each do |question|
      answers << ResponseAnswer.new(question: question)
    end
  end

end
