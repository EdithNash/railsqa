class Admin::PrioritiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_priority, only: [:show, :edit, :update, :destroy]

  def index
    @priority = Priority.all
  end

  def show
  end

  def new
    @priority = Priority.new
  end

  def create
    @priority = Priority.new(priority_params)

    respond_to do |format|
      if @priority.save
        format.html { redirect_to admin_priorities_path, notice: 'type test was successfully created.' }
        format.json { render action: 'show', status: :created, location: @priority }
      else
        format.html { render action: 'new' }
        format.json { render json: @priority.errors, status: :unprocessable_entity }
      end
    end  
  end

  def edit
    @priority = Priority.find(params[:id])
  end

  def update
    respond_to do |format|
      if @priority.update(priority_params)
        format.html { redirect_to admin_priorities_path, notice: 'priority was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @priority.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @priority.destroy
    respond_to do |format|
      format.html { redirect_to admin_priorities_url }
      format.json { head :no_content }
    end
  end

  private
  def set_priority
    @priority = Priority.find(params[:id])    
  end

  def priority_params
    params.require(:priority).permit(:description)    
  end
end
