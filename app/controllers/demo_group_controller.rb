class DemoGroupController < ApplicationController
  respond_to :json
  devise_token_auth_group :member, contains: [:user, :mang]
  before_action :authenticate_member!

  def members_only
    render json: {
      data: {
        message: "Welcome #{current_member.email}",
        user: current_member
      }
    }, status: 200
  end
end
