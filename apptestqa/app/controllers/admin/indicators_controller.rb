class Admin::IndicatorsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_indicator, only: [:show, :edit, :update, :destroy]

  def index
    @indicators = Indicator.all
  end

  def show
  end

  def new
    @indicator = Indicator.new
  end

  def create
    @indicator = Indicator.new(indicator_params)

    respond_to do |format|
      if @indicator.save
        format.html { redirect_to admin_indicators_path, notice: 'Indicator was successfully created.' }
        format.json { render action: 'show', status: :created, location: @indicator }
      else
        format.html { render action: 'new' }
        format.json { render json: @indicator.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @indicator = Indicator.find(params[:id])
  end

  def update
    respond_to do |format|
      if @indicator.update(indicator_params)
        format.html { redirect_to admin_indicators_path, notice: 'Indicator was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @indicator.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @indicator.destroy
    respond_to do |format|
      format.html { redirect_to admin_indicators_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indicator
      @indicator = Indicator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indicator_params
      params.require(:indicator).permit(:description, :definition, :calculation)
    end

end
