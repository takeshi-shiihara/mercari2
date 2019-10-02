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
    redirect_to root_path
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
  


  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to controller: :main, action: :index
    else
      redirect_to controller: :item, action: :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.user_id == current_user.id
      @item.update(item_params)
      redirect_to controller: :main, action: :index
    end
  end


  private

  def item_params
    params.require(:item).permit(:name, :description, :condition, :price, :image, :category_id, :size_id, :brand, delibery_attributes:[:id, :delibery_burden, :prefecture, :delibery_way, :delibery_date], brand_attributes:[:id, :name ]).merge(user_id: current_user.id )
  end
 

end
