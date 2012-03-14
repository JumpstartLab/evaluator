class Evaluation < ActiveRecord::Base
  belongs_to :person,    inverse_of: :evaluations
  belongs_to :evaluator, class_name: :Person
  belongs_to :assignment

  has_many :sections, dependent: :destroy
  has_many :questions, through: :sections
  has_many :responses, class_name: :EvaluationResponse, dependent: :destroy
  has_many :people, through: :responses

  after_initialize :set_access_code

  def to_param
    access_code
  end

  private

  def set_access_code
    if title_changed?
      self.access_code = title.to_s.parameterize
    end
  end
end
