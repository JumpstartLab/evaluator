require 'securerandom'

class EvaluationResponse < ActiveRecord::Base
  belongs_to :evaluator,  inverse_of: :responses, class_name: :Person
  belongs_to :evaluatee,                          class_name: :Person
  belongs_to :evaluation, include:    :questions

  has_many :answers,   class_name: :ResponseAnswer, dependent: :destroy
  has_many :questions, through: :answers
  has_many :feedbacks, dependent: :destroy, inverse_of: :response

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

  def score_results(group=:overall_score)
    @score_results ||= begin
      total_possible = score_questions(group).sum {|q| q.metadata[:range].try(:max) }
      total_earned   = score_answers(group).sum{|a| a.value.to_i }

      {total_earned: total_earned, total_possible: total_possible}
    end
  end

  def total_score_results(group=:overall_score)
    sister_responses = evaluation.responses.select do |response|
      project_url == response.project_url
    end

    {total_earned: sister_responses.sum {|r| r.score_results[:total_earned] },
     total_possible: sister_responses.sum {|r| r.score_results[:total_possible] }}
  end

  def project_url
    answer = answers.find{|a| a.question.project_url? }
    answer && answer.value
  end

  def score_answers(group)
    answers.select {|a| score_questions(group).include?(a.question) }
  end
  def score_questions(group)
    questions.select {|q| q.metadata[:group] == group }
  end

  def to_param
    access_code
  end

  def submit(attributes={})
    return false if completed?

    self.attributes = attributes.merge(submitted_at: Time.zone.now)
    save
  end

  def submitted?
    submitted_at
  end

  def completed?
    completed_at
  end
  alias :complete? :completed?

  def belongs_to?(user)
    evaluator == user
  end

  def for_peer?
    evaluator_id != evaluatee_id
  end
  alias :peer? :for_peer?

  def peer
    evaluatee if for_peer?
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
