class Section < ActiveRecord::Base
  has_many :questions, dependent: :destroy

  def self.in_order
    order("display_order ASC")
  end

  def description
    raw = read_attribute(:description)
    begin
      markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true)
      markdown.render(raw).html_safe
    rescue
      raw
    end
  end
end
