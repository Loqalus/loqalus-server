class Api::UsersController < Api::BaseController
respond_to :json
 
   skip_before_action :authenticate_user_from_token!, only: [:show]

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    @user.update!(user_params)
    render json: @user
  end

  def destroy
    User.find(params[:id]).destroy
    render :json => {:message => "Success"}
  end


   private


    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :bio, :location,:avatar, :background)
    end
end
