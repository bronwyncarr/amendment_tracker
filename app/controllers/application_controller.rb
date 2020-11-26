class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    # Alert message to user if they are not authorised by cancan base on roles
    # rescue_from CanCan::AccessDenied do
    #   flash[:error] = "Sorry, you don't have access to that operation."
    #   redirect_to tasks_path
    # end

    protected

    def layout_for_resource
      if devise_controller?
        'page'
      else
        'application'
      end
    end
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end

    def after_sign_in_path_for(_home)
      records_path
    end
end
