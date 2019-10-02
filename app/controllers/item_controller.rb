class ItemController < ApplicationController

  def index
  end

  def show
    # @item = Item.find(params[:id])
  end

  def hop1
  end

  def new
  end

  # def pay
  #   Payjp.api_key = 'sk_test_85b3d866e4d1e7a1e0358767'
  #   charge = Payjp::Charge.create(
  #   :amount => 3500,
  #   :card => params['payjp-token'],
  #   :currency => 'jpy',
  #   )
  #   redirect_to "/"
  # end
  
end
