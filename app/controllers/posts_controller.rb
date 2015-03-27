class PostsController < ApplicationController
  def index
    @posts = Post.all
    render :index
  end

  def show
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

# class PostsController < ApplicationController
#   def show
#     @post = Post.find(params[:id])
#     @user = User.find(@post.user_id)
#     render :show
#   end
#
#   def new
#     @user = User.find(params[:user_id])
#     if @user != current_user
#       flash[:notice] = "Tricky fox, this isn't your page!"
#       redirect_to users_path
#     end
#     @post = Post.new
#   end
#
#   def create
#     @user = User.find(params[:user_id])
#     @post = @user.posts.new(post_params)
#     if @post.save
#       flash[:notice] = "Post added!"
#       redirect_to user_path(@user)
#     else
#       flash[:alert] = "Your post was whisked away by sprites. Or you forgot to input something. Please try again."
#       render :new
#     end
#   end
#
#   def edit
#     @user = User.find(params[:user_id])
#     if @user != current_user
#       flash[:notice] = "Tricky fox, this isn't your page!"
#       redirect_to users_path
#     end
#     @post = Post.find(params[:id])
#   end
#
#   def update
#     @user = User.find(params[:user_id])
#     @post = Post.find(params[:id])
#     if @post.update(post_params)
#       flash[:notice] = "Post updated"
#       redirect_to user_path(@user)
#     else
#       render :edit
#     end
#   end
#
#   def destroy
#     @user = User.find(params[:user_id])
#     if @user != current_user
#       flash[:notice] = "Tricky fox, this isn't your page!"
#       redirect_to users_path
#     end
#     @post = Post.find(params[:id])
#     @post.destroy
#     flash[:notice] = "Post deleted!"
#     redirect_to user_path(@user)
#   end
#
# private
#   def post_params
#     params.require(:post).permit(:title, :body, :image)
#   end
# end
