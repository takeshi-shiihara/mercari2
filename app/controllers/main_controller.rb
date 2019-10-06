class MainController < ApplicationController

#  before_action :move_to_index, except: :index #ログインしていない時は出品できない仕様#

  def index
    @images = Image.all
    @items = Item.all

  end

  def login
  end

  def step5
  end

  def mypage
  end

  def serectcard
  end

  def profile
  end

  def card
  end

  def logout
  end

  def userinfomation
  end

  def listing
    if user_sined_in?
      @user = User.find(current_user.id)
    else
      redirect_to new_user_session_path
    end
  end

  private
#  def move_to_index  #ログインしていない時は出品できない仕様#
#    redirect_to action: :index unless user_signed_in?
#  end

end