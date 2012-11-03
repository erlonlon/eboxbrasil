    class PostsController < ApplicationController
    before_filter :load_resources
    def index

    @posts = Post.scoped.paginate page: params[:page], :per_page => 6
    #@posts = Post.paginate page: params[:page], :per_page => 5
    @posts = @posts.search(params[:search]) if params[:search].present?
    @posts = @category.posts if @category.present?
    @posts = @posts.published.paginate page: params[:page], :per_page => 6
    respond_with @posts
    end

    def show
    @post = Post.published.find(params[:id])
    respond_with @post
    end

    private
    def load_resources

    @categories = Category.all
    @category   = Category.find(params[:category_id]) if params[:category_id]

    @galeries = Galery.all
    @galeries_footer = CategoryGalery.find(3)
    @category_galeries   = CategoryGalery.find(3)
    @galeries_clientes = CategoryGalery.find(5)
    @posts_noticias = Category.find(5)




    end
    end
