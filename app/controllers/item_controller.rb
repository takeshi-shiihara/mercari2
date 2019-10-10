class ItemController < ApplicationController
  before_action :set_item, only:[:show, :edit, :update]

  def index
  end

  def show
    @q = Item.ransack(params[:q])
    @item = Item.find(params[:id])
    @prefecture = @item.delibery.prefecture
  end
 
  def hop1
  end

  def new
    if user_signed_in?
    @item = Item.new
    @item.build_delibery
    @item.build_brand
    10.times { @item.images.build }
    @category = Category.roots
    else
      redirect_to new_user_session_path
    end

  end

  def destroy
    item = Item.find(params[:id])
    item.destroy if item.user.id == current_user.id
    redirect_to root_path
  end



  def create
    @item = Item.new(item_params)
    if @item.images == []
      redirect_to controller: :item, action: :new
    else
      if @item.save
        redirect_to controller: :main, action: :index
      else
        redirect_to controller: :item, action: :new
      end
    end
  end

  def edit
    @category = Category.roots
    # 10.times { @item.images.build }
    unless @item.user.id == current_user.id
    redirect_to controller: :main, action: :index
    end
  end

  def update
    if @item.user_id == current_user.id
      @item.update(item_params)
      redirect_to controller: :main, action: :index
    end
  end


  private

  def item_params
    params.require(:item).permit(:name, :description, :condition, :price, :category_id, :size_id, :brand, delibery_attributes:[:id, :delibery_burden, :prefecture, :delibery_way, :delibery_date], brand_attributes:[:id, :name ], images_attributes:[:id, :main_image]).merge(user_id: current_user.id )
  end

  def set_item
    @item = Item.find(params[:id])
  end


end
