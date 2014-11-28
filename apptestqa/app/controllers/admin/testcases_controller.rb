class Admin::TestcasesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_testcase, only: [:show, :edit, :update, :destroy]

  def index
    @testcase = Testcase.all
  end

  def show
  end

  def new
    @testcase = Testcase.new
  end

  def create
    @testcase = Testcase.new(testcase_params)

    respond_to do |format|
      if @testcase.save
        format.html { redirect_to admin_testcases_path, notice: 'testcase was successfully created.' }
        format.json { render action: 'show', status: :created, location: @testcase }
      else
        format.html { render action: 'new' }
        format.json { render json: @testcase.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @testcase = Testcase.find(params[:id])
  end

  def update
    respond_to do |format|
      if @testcase.update(testcase_params)
        format.html { redirect_to admin_testcases_path, notice: 'testcase was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @testcase.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @testcase.destroy
    respond_to do |format|
      format.html { redirect_to admin_testcases_url }
      format.json { head :no_content }
    end
  end

  private
  def set_testcase
    @testcase = Testcase.find(params[:id])    
  end

  def testcase_params
    params.require(:testcase).permit(:number, :name, :description, :request, :precondition, :comment, :execution, :typetest_id, :user_id, :admin_stage_id, :component_id)    
  end
end
