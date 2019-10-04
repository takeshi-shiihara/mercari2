class AddressController < ApplicationController

  def new
    @address = Address.new
  end

  def create
    @address = Address.create(address_params)
    if @address.save
      redirect_to controller: :card, action: :new
    else
      render :new
    end
  end

  private

  def address_params
    params.require(:address).permit(:post_number, :prefecture, :city, :address, :building, :phone_number).merge(user_id:current_user.id)
  end
  
end
