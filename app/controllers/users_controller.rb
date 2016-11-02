class UsersController < ApplicationController
  before_action :authenticate, only: [:edit, :update]  #removed :show to allow for other profile viewing through show route
  before_action :authorize, only: [:edit, :update]     # ditto --^
    
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You have successfully signed up!"
      redirect_to root_path #user_path(@user)
    else
      render 'new'
    end
  end
    
  def show
      session[:return_to] = request.referer
      
      @user = User.find(params[:id])
  end
    
  def index
      session[:return_to] = request.referer
      
      @users = User.all
  end
    
  def edit    
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end
      
  private
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :website, :about, :img_url, :image)
    end
    
    def authenticate
        redirect_to new_session_path, alert: 'You must be logged in to continue!' if current_user.nil?
    end
    
    def authorize
      @user = User.find(params[:id])
      redirect_to root_path if @user != current_user
    end
end
