class ItemController < ApplicationController

  def index
  end

  def show
    @item = Item.find(params[:id])
  end

  def hop1
  end

  def new
    @item = Item.new
    @item.build_delibery
    @item.build_brand
    @category = Category.roots
  end


  def edit
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy if item.user.id == current_user.id
  end



  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to controller: :main, action: :index
    else
      redirect_to controller: :item, action: :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :condition, :price, :image, :category_id, :size_id, :brand, delibery_attributes:[:id, :delibery_burden, :prefecture, :delibery_way, :delibery_date], brand_attributes:[:id, :name ]).merge(user_id: current_user.id )
  end
 

end
