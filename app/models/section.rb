class Section < ActiveRecord::Base
  has_many :questions, dependent: :destroy

  def self.in_order
    order("display_order ASC")
  end
end
