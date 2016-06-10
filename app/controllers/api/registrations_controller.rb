class Api::RegistrationsController < Api::BaseController
  skip_before_action :authenticate_user_from_token!
  before_action :ensure_params_exist

  def create
    @user = User.new(
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password]
    )

    @auth_token = jwt_token(@user) if @user.save
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :provider, :uid, :name)
  end

  def ensure_params_exist
    if params[:email].blank? || params[:password].blank?
      return render_unauthorized errors: { unauthenticated: ["Incomplete credentials"] }
    end
  end
end
