class Api::UsersController < Api::BaseController
respond_to :json
 
   skip_before_action :authenticate_with_token!, only: [:show, :create, :interests, :all]

  def index
    @users = User.all
    render json: @users
  end

  def interests
    user = User.find(params[:id])
    tags = user.tags_list
    render :json => {:tags => tags}
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: 201, location: [:api, user]
    else
      render json: { errors: user.errors }, status: 422, message: "Something went wrong"
    end
  end

  def all
    if request.headers['token'] == "thetoken"
         @users = User.all
         @users = @users.as_json
    else
      @users = []
    end
    @body = []
      @users.each do |user|
          user.delete("id")
          user.delete("updated_at")
          user.delete("bio")
          user.delete("auth_token")
        @body.push user
        puts user
      end
      render json: @body
  end


  def show
    @user = User.find(params[:id])
    @user[:auth_token] = "haha"
    render :json => {:user => @user, :interests => @user.tag_list}
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
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :bio, :location, :avatar, :background, :tag_list => [])
    end
end
