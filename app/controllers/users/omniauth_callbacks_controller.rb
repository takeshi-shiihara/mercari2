# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    callback_for(:facebook)
  end

  def google_oauth2
    callback_for(:google_oauth2)
  end

  def callback_for(provider)
    info = User.find_oauth(request.env["omniauth.auth"])
    @user = info[:user]
    if @user.persisted? #ユーザー情報が存在するならば(メルカリでFB登録済みのユーザーである場合)
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success, kind: "Facebook".capitalize) if is_navigational_format?
    else#初めてFBで登録する
      render template: "users/registrations/new" #redirect_to だと更新してしまうのでrenderで
    end
  end
  end

  def failure
    redirect_to root_path and return
  end


