#http://blog.xenodesystems.com/2012/06/tutorial-express-de-ruby-on-rails-hacer.html
class Admin::StagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_stage, only: [:show, :edit, :update, :destroy]

  def index
    @stage = Admin::Stage.all
  end

  #Esta acción lo que tiene que hacer es buscar un post individualmente y regresar su ID
  def show
    #creamos la variable de instancia "@stage"
   @stage = Admin::Stage.find(params[:id])
  end

  def new
    @stage = Admin::Stage.new
  end

  def create
   # binding.pry
   # @stage = Admin::Stage.new(params[:stage])

    @stage = Admin::Stage.new(stage_params)

    respond_to do |format|

      if @stage.save
        format.html { redirect_to admin_stages_path, notice: 'Stagewas successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def edit
    @stage = Admin::Stage.find(params[:id])
  end

  def update
   respond_to do |format|
      if @stage.update(stage_params)
        format.html { redirect_to admin_stages_path, notice: 'stage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @stage.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @stage = Admin::Stage.find(params[:id])
    @stage.destroy
    redirect_to admin_stages_path, :notice => "Stage Destroy"
  end



private
    # Use callbacks to share common setup or constraints between actions.
    def set_stage
      @stage = Admin::Stage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stage_params
      params.require(:admin_stage).permit(:description)
    end


end
