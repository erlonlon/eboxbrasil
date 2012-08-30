class Admin::GaleriesController < Admin::BaseController
  before_filter :load_resources
  def index
    @galeries = Galery.all
    respond_with @galeries
  end  
  
  def new
    @galery = Galery.new

  respond_with @galery
  end
 
  def edit
    @galery = Galery.find(params[:id])
  end

  def create
    @galery = Galery.new(params[:galery])
    flash[:notice] = 'REgistro criado com sucesso.' if @galery.save
    respond_with @galery, :location => admin_galeries_path
   
  end

    def update
    @galery = Galery.find(params[:id])
    flash[:notice] = 'Registro atualizado com sucesso.' if @galery.update_attributes(params[:@galery])
    respond_with @galery, :location => admin_galeries_path
  
  end

   def destroy
    @galery = Galery.find(params[:id])
    @galery.destroy
    respond_with @galery, :location => admin_galeries_path
    
  end

  def load_resources

     @categories = Category.all
       @category_galeries = CategoryGalery.all
        @galeries = Galery.order("created_at DESC")
  end
end
