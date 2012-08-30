module ApplicationHelper

	 def flash_messages
       flash.collect do |key, msg|
       content_tag :p, msg, id: key, class: "notification n-success"
    end.join.html_safe
  end

	def error_messages_for(resource)
    render partial: "helper_extras/error_messages", locals: { resource: resource }
  end

  def textilize(text)
  	RedCloth.new(text).to_html.html_safe
  end
end
