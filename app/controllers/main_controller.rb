class MainController < ApplicationController

#  before_action :move_to_index, except: :index #ログインしていない時は出品できない仕様#
  require 'payjp'

  def index
    @images = Image.all
    @items = Item.all
    @q = Item.ransack(params[:q])
  end

  def login
  end

  def step5
  end

  def mypage
    @q = Item.ransack(params[:q])
    if user_signed_in?

      else
        redirect_to new_user_session_path
      end
  end

  def serectcard
    card = Card.where(user_id: current_user.id).first
    if card.blank?

    else
      redirect_to card_show_path
    end
  end

  def profile
    @q = Item.ransack(params[:q])
    if user_signed_in?
      @user = User.find(current_user.id)
    else
      redirect_to new_user_session_path
    end
  end

  def edit
      @user = User.find(current_user.id)
      @user.update(user_profile)
      redirect_to controller: :main, action: :index
    
end

  def card
  end

  def logout
  end

  def userinfomation
    @q = Item.ransack(params[:q])
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
    @q = Item.ransack(params[:q])
    if user_signed_in?
      @user = User.find(current_user.id)
    else
      redirect_to new_user_session_path
    end
  end

  def search
    @q = Item.search(search_params)
    @items = @q.result(distinct: true)
  end

  private

def user_params
  params.require(:user).permit(:nickname, :email, :first_name, :last_name, :first_name_kana, :last_name_kana, address_attributes:[:post_number, :prefecture, :city, :address, :building]).merge(id: current_user.id )
end

def user_profile
  params.require(:user).permit(:nickname, :profile).merge(id: current_user.id)
end

def search_params
  params.require(:q).permit(:name_cont)
end
end