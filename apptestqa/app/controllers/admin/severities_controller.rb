class Admin::SeveritiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_severity, only: [:show, :edit, :update, :destroy]

  def index
    @severity = Severity.all
  end

  def show
  end

  def new
    @severity = Severity.new
  end

  def create
    @severity = Severity.new(severity_params)

    respond_to do |format|
      if @severity.save
        format.html { redirect_to admin_severities_path, notice: 'type test was successfully created.' }
        format.json { render action: 'show', status: :created, location: @severity }
      else
        format.html { render action: 'new' }
        format.json { render json: @severity.errors, status: :unprocessable_entity }
      end
    end  
  end

  def edit
    @severity = Severity.find(params[:id])
  end

  def update
    respond_to do |format|
      if @severity.update(severity_params)
        format.html { redirect_to admin_severities_path, notice: 'severity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @severity.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @severity.destroy
    respond_to do |format|
      format.html { redirect_to admin_severities_url }
      format.json { head :no_content }
    end
  end

  private
    def set_severity
      @severity =Severity.find(params[:id])      
    end

    def severity_params
      params.require(:severity).permit(:description)      
    end
end
