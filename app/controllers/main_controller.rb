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
    if user_signed_in?
    @user = User.find(current_user.id)
    else
    redirect_to new_user_session_path
    end
  end

  def info
    @user = User.find(current_user.id)
    @user.update(user_params)
    redirect_to action: :userinfomation
  end
  
  def listing
    @user = User.find(current_user.id)
  end

  private

def user_params
  params.require(:user).permit(:nickname, :email, :first_name, :last_name, :first_name_kana, :last_name_kana, address_attributes:[:post_number, :prefecture, :city, :address, :building]).merge(id: current_user.id )
end

end