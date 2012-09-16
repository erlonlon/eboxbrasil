class ContatoMailer < ActionMailer::Base
  default :to => "erlon@eboxbrasil.com.br"

 
  def notification(contact)
    @contact = contact

    mail :reply_to => @contact.email, :assunto => "Novo Contato do Site"
  end
end
