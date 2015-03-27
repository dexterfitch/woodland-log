class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to the site!"
      redirect_to users_path
    else
      flash[:alert] = "There was a problem creating your account. Please try again."
      redirect_to :back
    end
  end

  def edit
    @user = User.find(params[:id])
    if @user != current_user
      flash[:notice] = "Tricky fox, this isn't your profile!"
      redirect_to users_path
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = @user.name + "'s details edited!"
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user != current_user
      flash[:notice] = "Tricky fox, this isn't your profile!"
      redirect_to users_path
    else
      session[:user_id] = nil
      @user.destroy
      flash[:notice] = "Profile destroyed!"
      redirect_to users_path
    end
  end

private
  def user_params
    params.require(:user).permit(:avatar, :name, :email, :password, :password_confirmation)
  end
end
