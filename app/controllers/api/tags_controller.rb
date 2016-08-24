class Api::TagsController < Api::BaseController

  respond_to :json
  skip_before_action :authenticate_user_from_token!, only: [ :index]


  def index
    tags = ActsAsTaggableOn::Tag.all
    render  :json => {:tags => tags}
  end

private
    def pins_params
      params.permit(:lat, :long, :dist, :uid)
    end
end
