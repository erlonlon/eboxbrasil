class PagesController < ApplicationController
	before_filter :load_resources
  def index

  end
private
  def load_resources 
    @categories = Category.all
    @category   = Category.find(params[:category_id]) if params[:category_id]
    @galeries = Galery.all
    
     @category_galeries   = CategoryGalery.find(3)
     @galeries_footer = CategoryGalery.find(3)
     @galeries_clientes = CategoryGalery.find(5)
  	
  end
end
