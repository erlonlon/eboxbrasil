class ServicesController < ApplicationController
	before_filter :load_resources
  layout 'posts'
  def index
  end
  private
   def load_resources 
  	 @categories = Category.all
    @category   = Category.find(params[:category_id]) if params[:category_id]
    @galeries = Galery.all
    
   @category_galeries   = CategoryGalery.find(1)
    @galeries_footer = CategoryGalery.find(1)
      @galeries_clientes = CategoryGalery.find(5)
        @posts_noticias = Category.find(3)
  end
end
