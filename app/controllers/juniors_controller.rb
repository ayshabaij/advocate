class JuniorsController < ApplicationController
  before_action :set_junior, only: [:show, :edit, :update, :destroy]


  def index
    @juniors = Junior.all
  end


  def show
  end

  def new
    @junior = Junior.new
  end

  def edit
  end

  def create
    @junior = Junior.new(junior_params)

    respond_to do |format|
      if @junior.save
        format.html { redirect_to @junior, notice: 'Junior was successfully created.' }
        format.json { render :show, status: :created, location: @junior }
      else
        format.html { render :new }
        format.json { render json: @junior.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @junior.update(junior_params)
        format.html { redirect_to @junior, notice: 'Junior was successfully updated.' }
        format.json { render :show, status: :ok, location: @junior }
      else
        format.html { render :edit }
        format.json { render json: @junior.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @junior.destroy
    respond_to do |format|
      format.html { redirect_to juniors_url, notice: 'Junior was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_junior
      @junior = Junior.find(params[:id])
    end


    def junior_params
      params.require(:junior).permit(:email, :password, :password_confirmation)
    end
end
