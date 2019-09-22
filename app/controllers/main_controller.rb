class MainController < ApplicationController

  before_action :move_to_index, except: :index #ログインしていない時は出品できない仕様#

  def index
  end

  private
  def move_to_index  #ログインしていない時は出品できない仕様#
    redirect_to action: :index unless user_signed_in?
  end

end