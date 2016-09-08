class UsersController < ApplicationController
  before_action :require_logged_in, only: [:show]

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def create
    @user = User.create(user_params)
    return redirect_to controller: 'users', action: 'new' unless @user.save
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end


  private

  def user_params
    params.require(:user).permit(:name, :height,
      :happiness, :nausea, :tickets, :password, :admin)
  end
end
