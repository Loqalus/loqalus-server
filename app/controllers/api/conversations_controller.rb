class Api::ConversationsController < Api::BaseController
# TODO change whitelisted params
  respond_to :json
  skip_before_action :authenticate_with_token!, only: [:show, :index, :create, :comment, :get_comments, :conversation]


  def index
    @conversations = Conversation.all
    render :json => {:conversations => @conversations}
  end

  def interests
    convo = Conversation.find(params[:id])
    tags = convo.tags_list
    render :json => {:tags => tags}
  end


  def conversation
    @conversation = Conversation.find(params[:id])
    @user = @conversation.user
    if(!@user.nil?)
      @user.auth_token = ""
    end
    render :json => {:conversation => @conversation, :tags => @conversation.tag_list, :creator => @user}
  end

  def comment
    @conversation = Conversation.find(params[:id])
    @comment = @conversation.comments.create
    @comment.user_id = params[:user_id]
    @comment.comment = params[:comment]
    @comment.save
    render :json => {:comment => @comment}
  end

  def get_comments
    limit = params[:limit]
    @conversation = Conversation.find(params[:id])
    @comments = @conversation.comments.recent.limit(limit).all
    allComments = []
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
      @conversation = Conversation.new(conversation_params)
      @conversation.save
      render :json => {:message => @conversation}
  end

  def show
    @conversation = Conversation.find(params[:id])
    render :json => { :conversation => @conversation, :tags => @conversation.tag_list}
  end

  def update
    @conversation = Conversation.find(params[:id])
    @conversation.update!(conversation_params)
    render :json => {:message => @conversation}
  end

  def destroy
  	Conversation.find(params[:id]).destroy
    render :json => {:message => "Success"}
  end


   private

   def allowed_to_edit_conversation?
   	@user == @curent_user
   end

    def conversation_params
      params.require(:conversation).permit(:title, :description, :user_id, :latitude, :longitude, :link, :in_house, :id, :comment, :limit, :action_type, :tag_list => [])
    end
end
