class Evaluation < ActiveRecord::Base
  belongs_to :person
  belongs_to :assignment
end
