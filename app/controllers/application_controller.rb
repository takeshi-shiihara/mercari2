class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :basic_auth, if: :production?
  protect_from_forgery with: :exception

  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :first_name, :last_name , :first_name_kana, :last_name_kana])
  end

  #もし電話番号が登録されていなかったら
  def after_sign_in_path_for(resource)
    @user = current_user
    @address = @user.address
    if @address.present?
      root_path
    else
      '/phone_number/new'
  end


end
end
  private

  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
  end
end