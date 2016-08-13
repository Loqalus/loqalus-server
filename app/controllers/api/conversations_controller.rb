class Api::ConversationsController < Api::BaseController
# TODO change whitelisted params
  respond_to :json
  skip_before_action :authenticate_user_from_token!, only: [:show, :index, :create, :comment, :get_comments, :conversation]


  def index
    @conversations = Conversation.all
    render :json => {:conversations => @conversations}
  end

  def conversation
    @conversation = Conversation.find(params[:id])
    render :json => { :conversation => @conversation}
  end

  def comment
    @conversation = Event.find(params[:id])
    @comment = @conversation.comments.create
    @comment.title = params[:title]
    @comment.user_id = params[:user_id]
    @comment.comment = params[:comment]
    @comment.save
    render :json => {:comment => @comment}
  end

  def get_comments
    limit = params[:limit]
    @conversation = Conversation.find(params[:id])
    @comments = @conversation.comments.recent.limit(limit).all
    render :json => {:comments => @comments}
  end

  def create
      @conversation = Conversation.new(conversation_params)
      @conversation.save
      render :json => {:message => @conversation}
  end

  def show
    @conversation = Conversation.find(params[:id])
    render :json => { :conversation => @conversation}
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
      params.require(:conversation).permit(:title, :description, :user_id, :latitude, :longitude, :link, :in_house, :id, :comment, :limit, :action_type)
    end
end
