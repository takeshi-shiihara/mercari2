class ItemController < ApplicationController

  def index
  end

  def show
    @item = Item.find(params[:id])
  end

  def hop1
  end

  def new
  end

end
