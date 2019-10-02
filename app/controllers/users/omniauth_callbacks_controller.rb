# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    info = User.find_oauth(request.env["omniauth.auth"])
    @user = info[:user]
    if @user.persisted? #ユーザー情報が存在するならば(メルカリでFB登録済みのユーザーである場合)
      sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, kind: "Facebook".capitalize) if is_navigational_format?
    else#初めてFBで登録する
      render template: "users/registrations/new" #redirect_to だと更新してしまうのでrenderで
    end
  end

  def failure
    redirect_to root_path and return
  end

  def google_oauth2
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    info = User.find_oauth(request.env["omniauth.auth"])
    @user = info[:user]
    #binding.pry
    if @user.persisted? #ユーザー情報が存在するならば(メルカリでFB登録済みのユーザーである場合)
      sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, kind: "Facebook".capitalize) if is_navigational_format?
    else#初めてFBで登録する
      render template: "users/registrations/new" #redirect_to だと更新してしまうのでrenderで
    end
  end

  def failure
    redirect_to root_path and return
  end


end
