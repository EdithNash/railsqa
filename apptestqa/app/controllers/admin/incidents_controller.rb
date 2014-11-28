class Admin::IncidentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_incident, only: [:show, :edit, :update, :destroy]

  def index
    @incident = Incident.all
  end

  def show
  end

  def new
    @incident = Incident.new
  end

  def create
    @incident = Incident.new(incident_params)

    respond_to do |format|
      if @incident.save
        format.html { redirect_to admin_incidents_path, notice: 'incident was successfully created.' }
        format.json { render action: 'show', status: :created, location: @incident }
      else
        format.html { render action: 'new' }
        format.json { render json: @incident.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @incident = Incident.find(params[:id])
  end

  def update
    respond_to do |format|
      if @incident.update(incident_params)
        format.html { redirect_to admin_incidents_path, notice: 'incident was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @incident.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @incident.destroy
    respond_to do |format|
      format.html { redirect_to admin_incidents_url }
      format.json { head :no_content }
    end
  end

  private
  def set_incident
    @incident = Incident.find(params[:id])    
  end

  def incident_params
    params.require(:incident).permit(:description, :evidence, :Incidente_date, :rvalidation_date, :rvalidationcount)    
  end
end
