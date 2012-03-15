class Section < ActiveRecord::Base
  has_many :questions, dependent: :destroy

  default_scope order("display_order ASC")
end
