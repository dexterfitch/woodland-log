class PostsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    if @user != current_user
      flash[:notice] = "Tricky fox, this isn't your page!"
      redirect_to users_path
    end
    @post = Post.new
  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.new(post_params)
    if @post.save
      flash[:notice] = "Post added!"
      redirect_to user_path(@user)
    else
      flash[:alert] = "Your post was whisked away by sprites. Or you forgot to input something. Please try again."
      render :new
    end
  end

  def edit
    @user = User.find(params[:user_id])
    if @user != current_user
      flash[:notice] = "Tricky fox, this isn't your page!"
      redirect_to users_path
    end
    @post = Post.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "Post updated"
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    if @user != current_user
      flash[:notice] = "Tricky fox, this isn't your page!"
      redirect_to users_path
    end
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Post deleted!"
    redirect_to user_path(@user)
  end

private
  def post_params
    params.require(:post).permit(:title, :body, :image)
  end
end
