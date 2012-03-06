class Question < ActiveRecord::Base
  has_many :answers

  def self.in_order
    order(:display_order)
  end
end
