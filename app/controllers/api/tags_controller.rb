class Api::TagsController < Api::BaseController

  respond_to :json
  skip_before_action :authenticate_user_from_token!, only: [:show, :index]


  def index
    @tag = Tag.all
    render :json => {:message => @tag}
  end

  def create
    # mayber check for similar name?
    @tag = Tag.new(tag_params)
    render :json => {:message => @tag}
  end

  def delete
    
  end

   private


    def tag_params
      params.require(:tag).permit(:name)
    end
end
