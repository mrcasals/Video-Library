class Admin::ApplicationController < ::ApplicationController
  before_filter :authenticate_user!

  def authenticate_admin!
    current_user.admin?
  end
end
