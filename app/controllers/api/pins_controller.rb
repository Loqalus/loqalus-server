class Api::PinsController < Api::BaseController

  respond_to :json
  skip_before_action :authenticate_user_from_token!, only: [ :index]


  def index
    lat = pins_params[:lat].to_f()
    long = pins_params[:long].to_f()
    dist = params[:dist].to_i()
    puts lat
    puts long
    puts dist

    campaigns  = Campaign.near([lat, long], dist, order: 'distance')
    events = Event.near([lat, long], dist, order: 'distance')
    conversations = Conversation.near([lat, long], dist, order: 'distance')

    pins = (campaigns + events + conversations)
    pins.sort! { |a, b|  a.distance <=> b.distance }
    render  :json => {:pins => pins}
  end


   private

    def pins_params
      params.permit(:lat, :long, :dist)
    end
end
