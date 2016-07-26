class Api::EventsController < Api::BaseController
# TODO change whitelisted params
	respond_to :json

  skip_before_action :authenticate_user_from_token!, only: [:show, :index, :create, :comment, :get_comments]

  def index
    @events = Event.all
    render :json => {:events => @events}
  end

  def comment
    @event = Event.find(params[:id])
    @comment = @event.comments.create
    @comment.title = params[:title]
    @comment.user_id = params[:user_id]
    @comment.comment = params[:comment]
    @comment.save
    render :json => {:comment => @comment}
  end

  def get_comments
    limit = params[:limit]
    @event = Event.find(params[:id])
    @comments = @event.comments.recent.limit(limit).all
    render :json => {:comments => @comments}
  end

  def create
     # binding.pry

      @event = Event.new(event_params)
      @event.user_id = event_params[:user_id]
      @event.avatar = image if params[:image]
       if @event.valid? then
          # location handling. Rsvp list handling
        end
      @event.lat = event_params[:lat].to_f
      @event.long = event_params[:long].to_f
      @event.save
      # RSVP the creator of the event
      render :json => {:message => @event}
  end

  def show
     @event = Event.find(params[:id])
     render :json => { :event => @event, :attendies => hashList}
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
    params.require(:event).permit(:title, :description, :start_date, :user_id, :latitude, :longitude, :in_house, :link, :id, :comment, :limit)
  end
end