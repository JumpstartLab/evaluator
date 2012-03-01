class Person < ActiveRecord::Base
  has_many :evaluations
  has_many :assignments, :through => :evaluations

  def to_s
    [last_name, first_name].join(', ')
  end
end
