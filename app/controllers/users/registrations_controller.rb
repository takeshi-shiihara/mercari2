class Users::RegistrationsController < Devise::RegistrationsController

  def create
      super
      sns = SnsCredential.update(user_id: @user.id)
  end
end

# private
# def check_captcha
#   unless verify_recaptcha
#     self.resource = resource_class.new sign_up_params
#     resource.validate # Look for any other validation errors besides Recaptcha
#     set_minimum_password_length
#     respond_with resource
#   end 
# end