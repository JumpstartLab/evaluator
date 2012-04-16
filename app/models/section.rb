class Section < ActiveRecord::Base
  extend MarkdownRendering

  render_as_markdown :description

  has_many :questions, dependent: :destroy

  def self.in_order
    order("display_order ASC")
  end

end
