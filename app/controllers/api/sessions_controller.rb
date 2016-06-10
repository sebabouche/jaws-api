class Api::SessionsController < ApplicationController
  skip_before_action :authenticate_user_from_token!
  before_action :ensure_params_exist

  def create
    @user = User.find_for_database_authentication(email: params[:email])
    return invalid_login_attempt unless @user
    return invalid_login_attempt unless @user.valid_password?(params[:password])

    @auth_token = jwt_token(@user)
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

  def ensure_params_exist
    if params[:email].blank? || params[:password].blank?
      return render_unauthorized errors: { unauthenticated: ["Incomplete credentials"] }
    end
  end

  def invalid_login_attempt
    render_unauthorized errors: { unauthenticated: ["Invalid credentials"] }
  end

end
