class Person < ActiveRecord::Base
  has_many :evaluations, inverse_of: :person
  has_many :assignments, through:     :evaluations
  has_many :responses,   class_name: :EvaluationResponse, foreign_key: :evaluator_id
  has_many :feedbacks,   inverse_of: :evaluator

  attr_accessible :first_name, :last_name, :email

  validates :github_handle, inclusion: Evaluator::PEOPLE

  def self.each_group(&block)
    instructors.each do |instructor|
      block.call(instructor, students_for(instructor)) if block
    end
  end

  def self.lightning_talk_students_in(group_name)
    students.select do |student|
      Evaluator::TALK_GROUPS[group_name].include?(student.github_handle)
    end
  end

  def self.instructors
    scoped.select {|person| Evaluator::ADMINS.include?(person.github_handle) }
  end

  def self.instructor_by_github_handle(handle)
    instructors.find {|instructor| instructor.github_handle == handle }
  end

  def self.students
    scoped.select {|person| Evaluator::STUDENTS.include?(person.github_handle) }
  end

  def self.students_for(instructor)
    []
    # students.select do |student|
    #   Evaluator::GROUPS[instructor.github_handle].include?(student.github_handle)
    # end
  end

  def self.student_handles_and_ids
    students.map {|s| [s.github_handle, s.id] }
  end

  def self.instructor?(person)
    Evaluator::ADMINS.include?(person.github_handle)
  end

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

  def to_recipient
    "\"#{full_name}\" <#{email}>"
  end
end
