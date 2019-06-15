module Admin
  class ApplicationController < ::ApplicationController
    responders :location, :flash

    before_action :authenticate_admin_user!

    layout 'admin/layouts/application'
   end
end