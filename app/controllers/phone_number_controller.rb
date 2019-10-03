class PhoneNumberController < ApplicationController

  def new
    @phone_number = PhoneNumber.new
  end

  def create
    @phone_number = PhoneNumber.create(phone_number_params)
    if @phone_number.save
      redirect_to controller: :address, action: :new
    else
      render :new
    end
  end


private

def phone_number_params
  params.require(:phone_number).permit(:phone_number).merge(user_id:current_user.id)
end

end
