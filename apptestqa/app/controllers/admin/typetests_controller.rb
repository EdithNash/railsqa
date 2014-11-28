class Admin::TypetestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_typetest, only: [:show, :edit, :update, :destroy]

  def index
    @typetest = Typetest.all
  end

  def show
  end

  def new
    @typetest = Typetest.new
  end

  def create
    @typetest = Typetest.new(typetest_params)

    respond_to do |format|
      if @typetest.save
        format.html { redirect_to admin_typetests_path, notice: 'type test was successfully created.' }
        format.json { render action: 'show', status: :created, location: @typetest }
      else
        format.html { render action: 'new' }
        format.json { render json: @typetest.errors, status: :unprocessable_entity }
      end
    end  
  end

  def edit
    @typetest = Typetest.find(params[:id])
  end

  def update
    respond_to do |format|
      if @typetest.update(typetest_params)
        format.html { redirect_to admin_typetests_path, notice: 'Typetest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @typetest.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @typetest.destroy
    respond_to do |format|
      format.html { redirect_to admin_typetests_url }
      format.json { head :no_content }
    end
  end

  private  
    def set_typetest
      @typetest = Typetest.find(params[:id])      
    end

    def typetest_params
      params.require(:typetest).permit(:description)      
    end

end
