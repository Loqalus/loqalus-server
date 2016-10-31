class Api::PinsController < Api::BaseController

  respond_to :json
  skip_before_action :authenticate_with_token!, only: [ :index]


  def index
    lat = pins_params[:lat].to_f()
    long = pins_params[:long].to_f()
    dist = params[:dist].to_i()
    filter = false
    if ! (request.headers[:HTTP_USER_ID] == 'null')
      uid = request.headers[:HTTP_USER_ID]
      begin
        @user = User.find(uid)
        filter = true
        user_tags = @user.tag_list
      rescue ActiveRecord::RecordNotFound
        filter = false
      end
    end
    pins = grab_pins(lat, long, dist)
    pins.sort! { |a, b|  a.distance <=> b.distance }
    if pins.length < 11
      filter = false
    end
    if filter
      pins = filter_pins(pins, user_tags)
    end
    if pins.length >= 10
        pins = pins[0..9]
    end

    render  :json => {:pins => pins}
  end


  private

    def filter_pins(pins, user_tags)
      pin_rankings = Array.new(pins.length, 0)
      pin_counter = 0

      for pin in pins
        dist_factor = dist_factorie(pin_counter)
        tags_on_pin = pin.tag_list
        pin_rankings[pin_counter] = pin_rankings[pin_counter] + (dist_factor)

        for tag in user_tags

          if tags_on_pin.include? tag
            pin_rankings[pin_counter]+=1
          end

        end

        pin_counter+=1
      end
      return sort_pins(pins, pin_rankings)
    end

    def dist_factorie(pin_counter)
      if pin_counter == 0
        return 5
      end

      return (4/pin_counter)
    end

    def sort_pins(pins, pin_rankings)
      pairs = pins.zip(pin_rankings)
      pairs.sort! {|a, b| b[1] <=> a[1]}
      pairs = pairs.map(&:first)
      return pairs 
    end

    def grab_pins(lat, long, dist)
      campaigns  = Campaign.near([lat, long], dist, order: 'distance')
      events = Event.near([lat, long], dist, order: 'distance')
      conversations = Conversation.near([lat, long], dist, order: 'distance')
      return (campaigns + events + conversations)
    end


    def pins_params
      params.permit(:lat, :long, :dist, :uid)
    end
end
