class PostsController < ApplicationController
	before_filter :load_resources
  def index
     @posts = Post.scoped
     @posts = @posts.search(params[:search]) if params[:search].present?
     @posts = @category.posts if @category.present?
     @posts = @posts.published
  	respond_with @posts
  end

  def show
  	@post = Post.find(params[:id])
  	respond_with @post
  end
  
private
  def load_resources

  	@categories = Category.all
    @category   = Category.find(params[:category_id]) if params[:category_id]
    @galeries_footer = CategoryGalery.find(2)
    @galeries = Galery.all
    
    @category_galeries   = CategoryGalery.find(3)

  

 
  end
end
