class MainController < ApplicationController

#  before_action :move_to_index, except: :index #ログインしていない時は出品できない仕様#

  def index
    @images = Image.all
    @items = Item.all

  end

  def step0
  end

  def step5
  end

  def mypage
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
    @user = User.find(1)
  end

  private
#  def move_to_index  #ログインしていない時は出品できない仕様#
#    redirect_to action: :index unless user_signed_in?
#  end

end