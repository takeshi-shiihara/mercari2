class MainController < ApplicationController

#  before_action :move_to_index, except: :index #ログインしていない時は出品できない仕様#

  def index
    @image = Image.all
    @item = Item.all
    # @images = Image.all
  end

  def step0
  end

  def step3
  end

  def step4
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

  private
#  def move_to_index  #ログインしていない時は出品できない仕様#
#    redirect_to action: :index unless user_signed_in?
#  end

end