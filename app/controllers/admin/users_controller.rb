module Admin
  class UsersController < Admin::ApplicationController
    before_action :logged_in_user, only: [:edit, :update]
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url, status: :see_other
      end
    end
  end
end