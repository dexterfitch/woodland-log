class PostsController < ApplicationController
  def index
    @posts = Post.all
    render :index
  end

  def show
    @comments = Comment.all
    @post = Post.find(params[:id])
    @user = User.find(@post.user_id)
    render :show
  end

  def new
    @post = Post.new
    render :new
  end

  def create
    @post = Post.new(posts_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to user_path(@post.user_id)
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    render :edit
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(posts_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Post deleted!"
    redirect_to user_path(@post.user_id)
  end

private
  def posts_params
    params.require(:post).permit(:title, :body, :image, :user_id)
  end
end
