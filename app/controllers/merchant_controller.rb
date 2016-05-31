class MerchantsController < ApplicationController
  before_action :authenticate_merchant!

  def members_only
    render json: {
      data: {
        message: "Welcome #{current_merchant.email}",
        user: current_merchant
      }
    }, status: 200
  end
end
