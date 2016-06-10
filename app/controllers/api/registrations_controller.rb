class Api::RegistrationsController < Api::BaseController
  skip_before_action :authenticate_user_from_token!

  def create
    @user = User.new(user_params)
    @auth_token = jwt_token(@user, user_params['password']) if @user.save
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :provider, :uid, :name)
  end
end
