class Admin::EnviromentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_enviroment, only: [:show, :edit, :update, :destroy]

  def index
    @enviroments = Enviroment.all
  end

  def show
  end

  def new
    @enviroment = Enviroment.new 
  end

  def create
    @enviroment = Enviroment.new(enviroment_params)

    respond_to do |format|
      if @enviroment.save
        format.html { redirect_to admin_enviroments_path, notice: 'enviroment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @enviroment }
      else
        format.html { render action: 'new' }
        format.json { render json: @enviroment.errors, status: :unprocessable_entity }
      end
    end 
  end

  def edit
    @enviroment = Enviroment.find( params[:id] )
  end

  def update
    respond_to do |format|
      if @enviroment.update(enviroment_params)
        format.html { redirect_to admin_enviroments_path, notice: 'enviroment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @enviroment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @enviroment.destroy
    respond_to do |format|
      format.html { redirect_to admin_enviroments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enviroment
      @enviroment = Enviroment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enviroment_params
      params.require(:enviroment).permit(:description)
    end

end
