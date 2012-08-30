module Admin::BaseHelper
 
 def section(title="", &block)
    content_tag :div, :class => "section" do
      html  = ""
      html  += content_tag :h3, title if title.present?
      html  += content_tag :div, :class => "in", &block
      html.html_safe
    end
  end
end