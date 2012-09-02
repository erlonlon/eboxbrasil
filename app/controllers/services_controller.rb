class ServicesController < ApplicationController
	before_filter :load_resources
  def index
  end
   def load_resources 
  	@galeries = Galery.limit(5)
  	@categories = Category.all
  	@posts = Post.all 
     
  end
end
