class Api::RegistrationsController < Api::BaseController
  skip_before_action :authenticate_with_token!
  respond_to :json
 
  def create
  	# binding.pry
    @user = User.new(user_params)
    @auth_token = jwt_token(@user) if @user.save
    if @user.save then
      @auth_token = jwt_token(@user)
      render json: @user
  end 
    render json: {message: "something went wrong"}
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation,:name, :bio, :location)
  end

end