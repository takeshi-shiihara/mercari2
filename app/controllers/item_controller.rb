class ItemController < ApplicationController
  before_action :set_item, only:[:show, :edit, :update]

  def index
  end

  def show
    @item = Item.find(params[:id])
    @prefecture = @item.delibery.prefecture
  end
 
  def hop1
  end

  def new
    @item = Item.new
    @item.build_delibery
    @item.build_brand
    @item.build_image
    @category = Category.roots
    # @category_parent_array = ["---"]
    # #データベースから、親カテゴリーのみ抽出し、配列化
    #   Category.where(ancestry: nil).each do |parent|
    #      @category_parent_array << parent.name
    #   end
  end

#   def get_category_children
#     #選択された親カテゴリーに紐付く子カテゴリーの配列を取得
#     @category_children = Category.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
#  end

#  # 子カテゴリーが選択された後に動くアクション
#  def get_category_grandchildren
#     #選択された子カテゴリーに紐付く孫カテゴリーの配列を取得
#     @category_grandchildren = Category.find("#{params[:child_id]}").children
#  end




  def destroy
    item = Item.find(params[:id])
    item.destroy if item.user.id == current_user.id
    redirect_to root_path
  end



  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to controller: :main, action: :index
    else
      redirect_to controller: :item, action: :new
    end
  end

  def edit
  end

  def update
    if @item.user_id == current_user.id
      @item.update(item_params)
      redirect_to controller: :main, action: :index
    end
  end


  private

  def item_params
    params.require(:item).permit(:name, :description, :condition, :price, :category_id, :size_id, :brand, delibery_attributes:[:id, :delibery_burden, :prefecture, :delibery_way, :delibery_date], brand_attributes:[:id, :name ], image_attributes:[:id, :main_image, :sub_image ]).merge(user_id: current_user.id )
  end

  def set_item
    @item = Item.find(params[:id])
  end
 

end
