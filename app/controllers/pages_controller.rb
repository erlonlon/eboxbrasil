class PagesController < ApplicationController
	before_filter :load_resources
  def index

  end
private
  def load_resources 
  	@galeries = Galery.limit(5)
  	@categories = Category.all
  	@posts = Post.all 
  	@galeries_footer = Galery.limit(6)

  	
  end
end
