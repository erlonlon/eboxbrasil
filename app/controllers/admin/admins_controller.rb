class Admin::AdminsController < Admin::BaseController
before_filter :load_resources
def index
	@posts = Post.paginate page: params[:page], :per_page => 15
end

def load_resources
 @posts = Post.order("created_at DESC")
     @categories = Category.all
       @category_galeries = CategoryGalery.all
        @galeries = Galery.paginate page: params[:page],:per_page => 48
        @users = User.all
end
end