class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    

    def authenticate_admin_user!
        
    end

    # rescue_from CanCan::AccessDenied do |exception|
    #     redirect_to root_url, :alert => exception.message
    # end
end
