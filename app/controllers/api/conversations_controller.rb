class Api::ConversationsController < Api::BaseController
# TODO change whitelisted params
  respond_to :json
  skip_before_action :authenticate_user_from_token!, only: [:show, :index, :create]


  def index
    @conversations = Conversation.all
    render :json => {:conversations => @conversations}
  end

  def create
      @conversation = Conversation.new(conversation_params)
      @conversation.user_id = conversation_params[:user_id]

       if @conversation.valid? then
          # Location stuff
        end
      @conversation.lat = conversation_params[:lat].to_f
      @conversation.long = conversation_params[:long].to_f
      @conversation.save
      render :json => {:message => @conversation}
  end

  def show
    @conversation = Conversation.find(params[:id])
    render json: @conversation
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
      params.require(:conversation).permit(:title, :description, :user_id, :latitude, :longitude, :link, :in_house)
    end
end
