class Api::CampaignsController < Api::BaseController

  respond_to :json
  skip_before_action :authenticate_user_from_token!, only: [:show, :index, :comment, :get_comments, :campaign]


  def index
    @campaigns = Campaign.all
    render :json => {:campaigns => @campaigns}
  end

  def interests
    campaign = Campaign.find(params[:id])
    tags = campaign.tags_list
    render :json => {:tags => tags}
  end


  def campaign
    @campaign = Campaign.find(params[:id])
    render :json => {:campaign => @campaign, :tags => @campaign.tag_list}
  end

  def show
    @campaign = Campaign.find(params[:id])
    render :json => {:campaign => @campaign, :tags => @campaign.tag_list}
  end

  def comment
    @campaign = Campaign.find(params[:id])
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
    @comments.each do |comment|
      user = User.find(comment.user_id).as_json
      user[:auth_token] = ""
      comment = comment.as_json
      comment[:user] = user
      allComments.append(comment)
    end
    render :json => {:comments => allComments}
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.save
    render :json => {:message => @campaign}
  end

  def show
    @campaign = Campaign.find(params[:id])
    render :json => { :campaign => @campaign}
  end

  def update
    @campaign = Campaign.find(params[:id])
    @campaign.update!(campaign_params)
    render :json => {:message => @campaign}
  end

  def destroy
    Campaign.find(params[:id]).destroy
    render :json => {:message => "Success"}
  end


   private

    def campaign_params
      params.require(:campaign).permit(:title, :description, :user_id, :latitude, :longitude, :link, :in_house, :id, :comment, :limit, :action_type)
    end
end
