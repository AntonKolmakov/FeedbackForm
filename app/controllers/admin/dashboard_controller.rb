module Admin
  class DashboardController < Admin::ApplicationController
    expose(:messages) { Message.all}
  end
end