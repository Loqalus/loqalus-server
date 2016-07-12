class Api::PinsController < Api::BaseController

  respond_to :json
  skip_before_action :authenticate_user_from_token!, only: [ :index]


  def index
    lat = pins_params[:lat].to_f()
    long = pins_params[:long].to_f()
    dist = params[:dist].to_i()
    uid = parans[:user_id]
    puts lat
    puts long
    puts dist

    campaigns  = Campaign.near([lat, long], dist, order: 'distance')
    events = Event.near([lat, long], dist, order: 'distance')
    conversations = Conversation.near([lat, long], dist, order: 'distance')

    # For each pin put it in a hash, with another value that is its rank. after sorting by distance. ! and add 10 to first, second,  so on.
    #  for each element in the array of hashes, for each tag in its list if.contained in 

    pins = (campaigns + events + conversations)
    pins.sort! { |a, b|  a.distance <=> b.distance }
    filter = true
    if pins.length > 10
      filter = false
    end
    if filter
      # pins = filter_pins(pins, user_tags)
    end
    render  :json => {:pins => pins}
  end


  private

    def filter_pins(pins, user_tags)
      pin_rankings = Array.new(pins.length, 0)
      pin_place = 0
      tag_cnt = 0
      dist_factor = 0
      for pin in pins
        dist_factor = dist_factorie(pin_place)
        tags_on_pin = pin.tag_list.split(/\s*,\s*/)

        pin_rankings[pin_place] = pin_rankings[pin_place] + dist_factor
        for tag in user_tags
          if tags_on_pin.include ? tag
            pin_rankings[pin_place] = 1 + pin_rankings[pin_place]
          end 
        end
        pin_place+=1
      end

      return sort_pins(pins, pin_rankings)
    end

    def dist_factorie(dist_rank)
      return 0
    end

    def sort_pins(pins, pin_rankings)
      pairs = pins.zip(pins_rankings)
      pairs.sort! {|a, b| a[1] <=> b[1]}
      pairs.map(&:first)
    end


    def pins_params
      params.permit(:lat, :long, :dist, :uid)
    end
end
