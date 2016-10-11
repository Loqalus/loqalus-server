class Api::BaseController < ApplicationController

  respond_to :json

  before_action :authenticate_with_token!

  protected

  def authenticate_user_from_token!
    if claims and user = User.find_by(email: claims[0]['user'])
      @current_user = user
    else
      return render_unauthorized
    end
  end

  def claims
    auth_header = request.headers['Authorization'] and
      token = auth_header.split(' ').last and
      ::JsonWebToken.decode(token)
  rescue
    nil
  end

  def jwt_token user
    JsonWebToken.encode('user' => user.email)
  end

  def render_unauthorized(payload = { errors: { unauthorized: ["You are not authorized perform this action."] } })
    render json: payload.merge(response: { code: 401 })
  end

end