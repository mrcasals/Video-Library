class Admin::DashboardController < Admin::AplicationController

  inherit_resources, :only => [:show]

end
