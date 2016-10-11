class Api::EventsController < Api::BaseController
# TODO change whitelisted params
	respond_to :json

  skip_before_action :authenticate_with_token!, only: [:show, :index, :create, :comment, :get_comments, :event]

  def index
    @events = Event.all
    render :json => {:events => @events}
  end

  def interests
    event = Event.find(params[:id])
    tags = event.tags_list
    render :json => {:tags => tags}
  end

  def event
    @event = Event.find(params[:id])
    render :json => {:event => @event, :tags => @event.tag_list}
  end

  def comment
    @event = Event.find(params[:id])
    @comment = @event.comments.create
    @comment.user_id = params[:user_id]
    @comment.comment = params[:comment]
    @comment.save
    render :json => {:comment => @comment}
  end

  def get_comments
    limit = params[:limit]
    @event = Event.find(params[:id])
    @comments = @event.comments.recent.limit(limit).all
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

  def rsvp
    @event = Event.find(params[:id])
    @event.attendanceList.attendies.push params[:user_id]
    @event.save
    render :json => {:message => @event}
  end


  def create
    @event = Event.new(event_params)
    @event.create_attendanceList()
    @event.save
    @event.attendanceList.attendies.push params[:user_id]
    @event.attendanceList.save
    @event.save
    render :json => {:message => @event}
  end

  def show
    @event = Event.find(params[:id])
    render :json => { :event => @event, :tags => @event.tag_list}
  end

  def update
    @event = Event.find(params[:id])
    @event.update!(event_params)
    render :json => {:message => @event}
  end

  def destroy
  	Event.find(params[:id]).destroy
    render :json => {:message => "Success"}
  end

   private

  def allowed_to_edit_event?
  	@user == @curent_user
  end

  def event_params
    params.require(:event).permit(:title, :description, :start_date, :user_id, :latitude, :longitude, :in_house, :link, :id, :comment, :limit, :action_type, :tag_list => [])
  end
end