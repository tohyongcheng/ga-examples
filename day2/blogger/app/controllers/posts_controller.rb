class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params) #post_params is a hash-like object
    if @post.save
      flash[:error] = "" # by right, you don't even need to write this
      redirect_to(post_path(@post.id))
    else # for example if post doesnt have a title
      flash[:error] = "There was a problem trying to create the post! #{@post.errors.full_messages.join(', ')}"
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to(post_path(@post.id))
    else
      render :edit
      flash[:error] = "There was a problem trying to update the post! #{@post.errors.full_messages.join(', ')}"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path # or root_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end