class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    def authenticate_admin_user!
        
    end
end
