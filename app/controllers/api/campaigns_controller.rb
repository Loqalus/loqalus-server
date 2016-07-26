class Api::CampaignsController < Api::BaseController

  respond_to :json
  skip_before_action :authenticate_user_from_token!, only: [:show, :index, :comment, :get_comments]


  def index
    @campaigns = Campaign.all
    render :json => {:campaigns => @campaigns}
  end

  def comment
    @campaign = Event.find(params[:id])
    @comment = @campaign.comments.create
    @comment.title = params[:title]
    @comment.user_id = params[:user_id]
    @comment.comment = params[:comment]
    @comment.save
    render :json => {:comment => @comment}
  end

  def get_comments
    limit = params[:limit]
    @campaign = Campaign.find(params[:id])
    @comments = @campaign.comments.recent.limit(limit).all
    render :json => {:comments => @comments}
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.user_id = campaign_params[:user_id]

    if @campaign.valid? then
      # location
    end
    @campaign.lat = campaign_params[:lat].to_f
    @campaign.long = campaign_params[:long].to_f
    @campaign.save
    render :json => {:message => @campaign}
  end

  def show
    @campaign = Campaign.find(params[:id])
    render json: @campaign
  end

  def update
    return render_unauthorized unless allowed_to_edit_campaign?
    @campaign = Campaign.find(params[:id])
    @campaign.update!(campaign_params)
    render :json => {:message => @campaign}
  end

  def destroy
    Campaign.find(params[:id]).destroy
    render :json => {:message => "Success"}
  end


   private

    def allowed_to_edit_campaign?
      @user == @current_user
    end

    def campaign_params
      params.require(:campaign).permit(:title, :description, :user_id, :latitude, :longitude, :link, :in_house, :id, :comment, :limit)
    end
end
