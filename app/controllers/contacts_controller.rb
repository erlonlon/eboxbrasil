class ContactsController < ApplicationController

	before_filter :load_resources
  def index

   @contact = Contact.new
   respond_with @contact

  end

  def show

    @contact = Contact.find(params[:id])
    respond_with @contact
    
  end

  def new
   
      @contact = Contact.new
      respond_with @contact
  end

  
  def create
    @contact = Contact.new(params[:contact])
    flash[:notice] = 'Contato enviado com sucesso. ' if @contact.save 
    respond_with @contact 

  end


  def load_resources

	@categories = Category.all
	@category   = Category.find(params[:category_id]) if params[:category_id]
	@galeries = Galery.all

	 @category_galeries   = CategoryGalery.find(3)
	 @galeries_footer = CategoryGalery.find(3)
	 @galeries_clientes = CategoryGalery.find(5)	

  end
end
