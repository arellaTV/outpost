module Outpost
  class SessionsController < Outpost::BaseController
    skip_before_filter :require_login
    before_filter :get_authentication_attribute

    respond_to :html

    def new
      redirect_to outpost.root_path if current_user
    end

    def create
      if user = Outpost.user_class.authenticate(
        params[@authentication_attribute], params[:password])

        session[:user_id] = user.id
        user.update_column(:last_login, Time.zone.now)

        redirect_to session[:return_to] || outpost.root_path,
          notice: "Logged in."

        session[:return_to] = nil
      else
        flash.now[:alert] = "Invalid login information."
        render :new
      end
    end

    def destroy
      @current_user = nil
      session[:user_id] = nil
      redirect_to outpost.login_path, notice: "Logged Out."
    end

    private

    def get_authentication_attribute
      @authentication_attribute = Outpost.config.authentication_attribute
    end
  end
end
