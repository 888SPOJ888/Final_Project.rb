class DashboardsController < ApplicationController

  def index
    @dashboards = Dashboard.all.order(date: :desc)
  end
end
