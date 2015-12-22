class Admins::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google
      # You need to implement the method below in your model (e.g. app/models/admin.rb)
      @admin = Admin.from_omniauth(request.env["omniauth.auth"])

      if @admin.persisted?
        flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
        sign_in_and_redirect @admin, :event => :authentication
      else
        session["devise.google_data"] = request.env["omniauth.auth"]
        redirect_to new_admin_registration_url
      end
  end
end
