class Users::RegistrationsController < Devise::RegistrationsController

  def create
      super
      sns = SnsCredential.update(user_id: @user.id)
  end
end
