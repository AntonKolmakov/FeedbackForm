require "application_responder"

module Admin
  class ApplicationController < ::ApplicationController
    self.responder = ApplicationResponder
    respond_to :html
    responders :location, :flash

    before_action :authenticate_admin_user!

    layout 'admin/layouts/application'
   end
end