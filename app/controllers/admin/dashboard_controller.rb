module Admin
  class DashboardController < Admin::ApplicationController
    expose(:messages) { Message.page(params[:page]).per(10) }
  end
end