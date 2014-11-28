class Admin::StatusqcsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_statusqc, only: [:show, :edit, :update, :destroy]

  # GET /statusqcs
  # GET /statusqcs.json
  def index
    @statusqcs = Statusqc.all
  end

  # GET /statusqcs/1
  # GET /statusqcs/1.json
  def show
  end

  # GET /statusqcs/new
  def new
    @statusqc = Statusqc.new
  end

  # GET /statusqcs/1/edit
  def edit
  end

  # POST /statusqcs
  # POST /statusqcs.json
  def create
    @statusqc = Statusqc.new(statusqc_params)

    respond_to do |format|
      if @statusqc.save
        format.html { redirect_to admin_statusqcs_path, notice: 'Statusqc was successfully created.' }
        format.json { render action: 'show', status: :created, location: @statusqc }
      else
        format.html { render action: 'new' }
        format.json { render json: @statusqc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /statusqcs/1
  # PATCH/PUT /statusqcs/1.json
  def update
    respond_to do |format|
      if @statusqc.update(statusqc_params)
        format.html { redirect_to admin_statusqcs_path, notice: 'Statusqc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @statusqc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statusqcs/1
  # DELETE /statusqcs/1.json
  def destroy
    @statusqc.destroy
    respond_to do |format|
      format.html { redirect_to admin_statusqcs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statusqc
      @statusqc = Statusqc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def statusqc_params
      params.require(:statusqc).permit(:description)
    end
end
