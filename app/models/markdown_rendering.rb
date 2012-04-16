module MarkdownRendering

  def self.markdown
    @markdown ||= begin
      xhtml_renderer = Redcarpet::Render::XHTML.new(hard_wrap: true)
      Redcarpet::Markdown.new(xhtml_renderer, autolink: true)
    end
  end

  def render_as_markdown(*attributes)
    attributes.map(&:to_sym).each do |attribute|
      define_method(attribute) do
        raw = read_attribute(attribute).to_s
        MarkdownRendering.markdown.render(raw).html_safe
      end
    end
  end

end
