class Admin::ValuesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_value, only: [:show, :edit, :update, :destroy]

  def index
    @values = Value.all
  end

  def show
  end

  def new
    @value = Value.new
  end

  def create
    @value = Value.new(value_params)

    respond_to do |format|
      if @value.save
        format.html { redirect_to admin_values_path, notice: 'value was successfully created.' }
        format.json { render action: 'show', status: :created, location: @value }
      else
        format.html { render action: 'new' }
        format.json { render json: @value.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @value = Value.find(params[:id])
  end

  def update
    respond_to do |format|
      if @value.update(value_params)
        format.html { redirect_to admin_values_path, notice: 'value was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @value.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @value.destroy
    respond_to do |format|
      format.html { redirect_to admin_values_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_value
      @value = Value.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def value_params
      params.require(:value).permit(:value, :classification_id, :indicator_id )
    end
end
