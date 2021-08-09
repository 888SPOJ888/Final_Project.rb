class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  
  def index
    @user = current_user

  end

  def edit
    authorize! :edit    
  end

  <% if can? :destroy, course %>
    <%= link_to t('.destroy', :default => t("helpers.links.destroy")),
    course_path(course),
    :method => :delete,
    :data => { :confirm => t('.confirm', :default => t("helpers.links.confirm", :default => 'Are you sure?')) },
    :class => 'btn btn-mini btn-danger' %>
  <% end %>

end
