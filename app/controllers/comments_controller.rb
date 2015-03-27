class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comments_params)
    @comment.user_id = current_user.id
    if @comment.save
      flash[:notice] = "Comment successfully added!"
      redirect_to post_path(@comment.post)
    else
      render :new
    end
  end


  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    render :edit
  end

  def update
    @post = Post.find(params[:post_id])
    @comment= Comment.find(params[:id])
    if @comment.update(comments_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end


  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "Comment successfully deleted."
    redirect_to post_path(@post)
  end

  private
  def comments_params
    params.require(:comment).permit(:body, :user_id, :post_id)
  end

end


# class CommentsController < ApplicationController
#   def new
#     @user = User.find(params[:user_id])
#     @post = Post.find(params[:post_id])
#     @comment = Comment.new
#   end
#
#   def create
#     @user = User.find(params[:user_id])
#     @post = Post.find(params[:post_id])
#     @comment = @post.comments.new(comment_params)
#     if @comment.save
#       flash[:notice] = "comment added!"
#       redirect_to user_path(@user)
#     else
#       flash[:alert] = "Your comment was turned into pixie dust by disgruntled fairies. Or you forgot to input something. Please try again."
#       render :new
#     end
#   end
#
#   def edit
#     @user = User.find(params[:user_id])
#     @post = Post.find(params[:post_id])
#     @comment = Comment.find(params[:id])
#   end
#
#   def update
#     @user = User.find(params[:user_id])
#     @post = Post.find(params[:post_id])
#     @comment = Comment.find(params[:id])
#     if @comment.update(comment_params)
#       flash[:notice] = "Comment updated"
#       redirect_to user_path(@user)
#     else
#       render :edit
#     end
#   end
#
#   def destroy
#     @user = User.find(params[:user_id])
#     @post = Post.find(params[:post_id])
#     @comment = Comment.find(params[:id])
#     @comment.destroy
#     flash[:notice] = "Comment deleted!"
#     redirect_to user_path(@user)
#   end
#
# private
#   def comment_params
#     params.require(:comment).permit(:body)
#   end
# end
