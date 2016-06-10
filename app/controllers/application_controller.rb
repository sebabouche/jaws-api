class ApplicationController < Api::BaseController
  # Prevent CSRF attacks by using :null_session
  protect_from_forgery with: :null_session

end
