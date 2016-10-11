class Api::PinsController < Api::BaseController

  respond_to :json
  skip_before_action :authenticate_with_token!, only: [ :index]


  def index
    lat = pins_params[:lat].to_f()
    long = pins_params[:long].to_f()
    dist = params[:dist].to_i()
    filter = false
    if params.has_key?(:uid) 
      uid = params[:uid]
      @user = User.find(uid)
      filter = true
      user_tags = @user.tag_list
    end
    pins = grab_pins(lat, long, dist)
    pins.sort! { |a, b|  a.distance <=> b.distance }
    if pins.length < 11
      filter = false
    end
    if filter
      pins = filter_pins(pins, user_tags)
    end

    render  :json => {:pins => pins}
  end


  private

    def filter_pins(pins, user_tags)
      pin_rankings = Array.new(pins.length, 0)
      pin_counter = 0
      dist_factor = 0

      for pin in pins
        dist_factor = dist_factorie(pin_counter)
        tags_on_pin = pin.tag_list
        pin_rankings[pin_counter] = pin_rankings[pin_counter] + dist_factor

        for tag in user_tags

          if tags_on_pin.include? tag
            pin_rankings[pin_counter]+=1
          end

        end

        pin_counter+=1
      end
      puts pin_rankings
      # ONLY RETURN TOP TEN
      return sort_pins(pins, pin_rankings)
    end

    def dist_factorie(dist_rank)
      return 0
    end

    def sort_pins(pins, pin_rankings)
      pairs = pins.zip(pin_rankings)
      pairs.sort! {|a, b| a[1] <=> b[1]}
      pairs.map(&:first)
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
