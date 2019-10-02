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

  def edit
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy if item.user.id == current_user.id
  end


end
