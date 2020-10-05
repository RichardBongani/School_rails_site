class ApplicationController < ActionController::Base
    protected
    def authenticate_user!
      if user_signed_in?
        super
      else
        redirect_to @dashboards, :notice => 'if you want to add a notice'
      end
    end
end
