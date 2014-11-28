class Admin::SugestionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_sugestion, only: [:show, :edit, :update, :destroy]


  def index
    @sugestion = Sugestion.all
  end

  def show
  end

  def new
    @sugestion = Sugestion.new
  end

  def create
    @sugestion = Sugestion.new(sugestion_params)

    respond_to do |format|
      if @sugestion.save
        format.html { redirect_to admin_sugestions_path, notice: 'sugestion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sugestion }
      else
        format.html { render action: 'new' }
        format.json { render json: @sugestion.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @sugestion =Sugestion.find(params[:id])
  end

  def update
    respond_to do |format|
      if @sugestion.update(sugestion_params)
        format.html { redirect_to admin_sugestions_path, notice: 'sugestion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sugestion.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @sugestion.destroy
    respond_to do |format|
      format.html { redirect_to admin_sugestions_url }
      format.json { head :no_content }
    end
  end

  private
    def set_sugestion
      @sugestion = Sugestion.find(params[:id])    
    end

    def sugestion_params
      params.require(:sugestion).permit(:description, :evidence, :suggestion_date, :resolution )      
    end


end
