class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  theme :theme_resolver



  protected

  def after_sign_in_path_for(resource)
  	new_admin_dashboard_path
  end

   def theme_resolver
    if current_shop_admin.present?
        if request.path.include? "admin"
          params[:theme] ||= "Dashboard"
        else
          params[:theme] ||= @theme.theme_name
        end
    else
        params[:theme] ||= "Restroknekt"
      end
   end


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:restaurant_name, :contact_number])
    devise_parameter_sanitizer.permit(:account_update, keys: [:restaurant_name, :contact_number])
  end
end
