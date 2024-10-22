class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    case current_user.role
    when 'admin'
      admin_dashboard_path
    when 'store_owner'
      store_owner_dashboard_path
    else
      stores_path
    end
  end
end
