class DashboardsController < ApplicationController

  def index
    @dashboards = Dashboard.all.order(date: :desc)
    @column_data = Dashboard.types.keys.map do |type|
      { name: type.capitalize, data: Dashboard.where(type: type).group_by_week(:date).sum(:amount) } 
    end
  end
end
