class Admin::PostsController < Admin::BaseController
  before_filter :load_resources
  def index
    @posts = Post.paginate page: params[:page], :per_page => 15
    respond_with @posts
  end 

  def new
  	@post = Post.new
  	respond_with @post
  end
  def show
   @post = Post.find(params[:id])
    respond_with @post, :location => admin_post_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
     @post = Post.new(params[:post])
     flash[:notice] = 'Registro salvo com sucesso.' if @post.save
     respond_with @post, :location => admin_posts_path

  end

  def update
     @post = Post.find(params[:id])
     flash[:notice] = 'Registro atualizado com sucesso. ' if @post.update_attributes(params[:post])
     respond_with @post , :location => admin_posts_path

  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    respond_with @post, :location => admin_posts_path
  end

  def load_resources

     @categories = Category.all
       @category_galeries = CategoryGalery.all
        @galeries = Galery.paginate page: params[:page],:per_page => 48
        @users = User.order("first_name ASC")
  end
end 