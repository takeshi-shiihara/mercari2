class AddressController < ApplicationController

  def new
    @address = Address.new
  end

  def create
    @address = Address.create(address_params)
    if @address.save
      redirect_to controller: :main, action: :step4
    else
    redirect_to controller: :main, action: :index
    end
  end

  private

  def address_params
    params.require(:address).permit(:post_number, :prefecture, :city, :address, :building, :phone_number).merge(user_id:current_user.id)
  end
  
end
