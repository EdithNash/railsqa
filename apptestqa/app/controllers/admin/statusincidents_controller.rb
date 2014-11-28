class Admin::StatusincidentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_statusincident, only: [:show, :edit, :update, :destroy]

  def index
    @Statusincident = Statusincident.all
  end

  def show
  end

  def new
    @Statusincident = Statusincident.new
  end

  def create
    @statusincident = Statusincident.new(statusincident_params)

    respond_to do |format|
      if @statusincident.save
        format.html { redirect_to admin_statusincident_path, notice: 'type test was successfully created.' }
        format.json { render action: 'show', status: :created, location: @statusincident }
      else
        format.html { render action: 'new' }
        format.json { render json: @statusincident.errors, status: :unprocessable_entity }
      end
    end  
  end

  def edit
    @Statusincident = Statusincident.find(params[:id])
  end

  def update
    respond_to do |format|
      if @statusincident.update(statusincident_params)
        format.html { redirect_to admin_statusincident_path, notice: 'statusincident was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @statusincident.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @statusincident.destroy
    respond_to do |format|
      format.html { redirect_to admin_statusincident_url }
      format.json { head :no_content }
    end
  end

  private
  def set_statusincident
    @Statusincident = Statusincident.find(params[:id])    
  end

  def statusincident_params
    params.require(:statusincident).permit(:description)
    
  end
end
