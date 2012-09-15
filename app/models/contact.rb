class Contact < ActiveRecord::Base
  attr_accessible :assunto, :body, :email, :name

   validates_presence_of :name, :email, :assunto, :body
   validates_format_of :email, :with => /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
   default_scope order: "created_at DESC"

   after_create :deliver_notification

   protected
   def deliver_notification
    
    ContatoMailer.notification(self).deliver

   end
end
