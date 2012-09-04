class Admin::AdminsController < Admin::BaseController
before_filter :load_resources
def index
	
end

def load_resources
 @posts = Post.order("created_at DESC")
     @categories = Category.all
       @category_galeries = CategoryGalery.all
        @galeries = Galery.order("created_at DESC")
        @users = User.all
end
end