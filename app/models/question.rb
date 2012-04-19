class Question < ActiveRecord::Base
  has_many :answers

  store :metadata

  def self.in_order
    order(:display_order)
  end

  def project_url?
    false
  end
end
