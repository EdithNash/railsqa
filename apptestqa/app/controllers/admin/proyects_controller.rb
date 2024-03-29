class Admin::ProyectsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_proyect, only: [:show, :edit, :update, :destroy]

  # GET /proyects
  # GET /proyects.json
  def index
    @proyects = Proyect.all
  end

  # GET /proyects/1
  # GET /proyects/1.json
  def show
    
  end

  # GET /proyects/new
  def new
    @proyect = Proyect.new
  end

  # GET /proyects/1/edit
  def edit
  end

  # POST /proyects
  # POST /proyects.json
  def create
    @proyect = Proyect.new(proyect_params)

    respond_to do |format|
      if @proyect.save
        format.html { redirect_to admin_proyects_path, notice: 'Proyect was successfully created.' }
        format.json { render action: 'show', status: :created, location: @proyect }
      else
        format.html { render action: 'new' }
        format.json { render json: @proyect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proyects/1
  # PATCH/PUT /proyects/1.json
  def update
    respond_to do |format|
      if @proyect.update(proyect_params)
        format.html { redirect_to admin_proyects_path, notice: 'Proyect was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @proyect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proyects/1
  # DELETE /proyects/1.json
  def destroy
    @proyect.destroy
    respond_to do |format|
      format.html { redirect_to admin_proyects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proyect
      @proyect = Proyect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proyect_params
      params.require(:proyect).permit(:name, :version, :classification_id, :statusqc_id )
    end
end
