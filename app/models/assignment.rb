class Assignment < ActiveRecord::Base
  has_many :evaluations
  has_many :people, :through => :evaluations
end
