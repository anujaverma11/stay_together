class UsersController < ApplicationController
  def index
    @users = User.all.map do |user|
      user.as_json include: [:pictures]
    end
    if request.xhr?
      render json: @users
    else
      # render json:@users
    end
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
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :date_of_birth, :place_of_birth, :phone_number, :gender,:email, :password, :password_confirmation)
  end


end
