class Admin::StepsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_step, only: [:show, :edit, :update, :destroy]

  def index
    @step = Step.all
  end

  def show
  end

  def new
    @step = Step.new
  end

  def create
    @step = Step.new(step_params)

    respond_to do |format|
      if @step.save
        format.html { redirect_to admin_steps_path, notice: 'step was successfully created.' }
        format.json { render action: 'show', status: :created, location: @step }
      else
        format.html { render action: 'new' }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @step = Step.find(params[:id])
  end

  def update
    respond_to do |format|
      if @step.update(step_params)
        format.html { redirect_to admin_steps_path, notice: 'step was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @step.destroy
    respond_to do |format|
      format.html { redirect_to admin_steps_url }
      format.json { head :no_content }
    end
  end

  private
  def set_step
    @step = Step.find(params[:id])    
  end

  def step_params
    params.require(:step).permit(:number, :description, :expected, :result)
    
  end
end
