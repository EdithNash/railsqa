class Admin::RvalidationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_rvalidation, only: [:show, :edit, :update, :destroy]

  def index
    @rvalidation = Rvalidation.all
  end

  def show
  end

  def new
    @rvalidation = Rvalidation.new
  end

  def create
    @rvalidation = Rvalidation.new(rvalidation_params)

    respond_to do |format|
      if @rvalidation.save
        format.html { redirect_to admin_rvalidations_path, notice: 'type test was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rvalidation }
      else
        format.html { render action: 'new' }
        format.json { render json: @rvalidation.errors, status: :unprocessable_entity }
      end
    end  
  end

  def edit
    @rvalidation = Rvalidation.find(params[:id])
  end

  def update
    respond_to do |format|
      if @rvalidation.update(rvalidation_params)
        format.html { redirect_to admin_rvalidations_path, notice: 'rvalidation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rvalidation.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @rvalidation.destroy
    respond_to do |format|
      format.html { redirect_to admin_rvalidations_url }
      format.json { head :no_content }
    end
  end

  private
  def set_rvalidation
    @rvalidation = Rvalidation.find(params[:id])    
  end

  def rvalidation_params
    params.require(:rvalidation).permit(:description)    
  end
end
