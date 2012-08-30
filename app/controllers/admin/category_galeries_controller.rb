class Admin::CategoryGaleriesController < Admin::BaseController
  
  def index
    @category_galeries = CategoryGalery.all
    respond_with @category_galeries
    
  end

  def new
    @category_galery = CategoryGalery.new
    respond_with @category_galery
  end


  def edit
    @category_galery = CategoryGalery.find(params[:id])
  end

  def create
    @category_galery = CategoryGalery.new(params[:category_galery])
    flash[:notice] = 'Registro criado com sucesso.' if @category_galery.save
    respond_with @category_galery, :location => admin_category_galeries_path
  end

   def update
    @category_galery = CategoryGalery.find(params[:id])
    flash[:notice] = "Resgistro atualizado com sucesso." if @category_galery.update_attributes(params[:category_galery])
    respond_with @category_galery, :location => admin_category_galeries_path
    
  end

 
  def destroy
    @category_galery = CategoryGalery.find(params[:id])
    @category_galery.destroy
    respond_with @category_galery , :location => admin_category_galeries_path
   
  end
end
