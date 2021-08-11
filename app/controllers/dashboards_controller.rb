class DashboardsController < ApplicationController

  def index
    @dashboards = Dashboard.all.order(date: :desc)
    @column_data = Dashboard.types.keys.map do |type|
      { name: type.capitalize, data: Dashboard.where(type: type).group_by_week(:date).sum(:amount) } 
    end

    @dashboard = Dashboard.new
  end

   # GET /dashboards/1 or /dashboards/1.json
  def show
  end

  # GET /dashboards/new
  def new
    @dashboard = dashboard.new
  end

  # GET /dashboards/1/edit
  def edit
  end

  # POST /dashboards or /dashboards.json
  def create
    @dashboard = dashboard.new(dashboard_params)

    respond_to do |format|
      if @dashboard.save
        format.html { redirect_to @dashboard, notice: "dashboard was successfully created." }
        format.json { render :show, status: :created, location: @dashboard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dashboards/1 or /dashboards/1.json
  def update
    respond_to do |format|
      if @dashboard.update(dashboard_params)
        format.html { redirect_to @dashboard, notice: "dashboard was successfully updated." }
        format.json { render :show, status: :ok, location: @dashboard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dashboards/1 or /dashboards/1.json
  def destroy
    @dashboard.active = false
    
    respond_to do |format|
      if @dashboard.save
      format.html { redirect_to dashboards_url, notice: "dashboard was successfully destroyed." }
      format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashboard
      @dashboard = dashboard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dashboard_params
      params.require(:dashboard).permit(:name)
    end
end
