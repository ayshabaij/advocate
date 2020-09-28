class AdvocatesController < ApplicationController
  before_action :set_advocate, only: [:show, :edit, :update, :destroy]

  def index
    @advocates = Advocate.all
  end

  def show
  end

  def new
    @advocate = Advocate.new

    @advocate = Advocate.select(:case).where(state: params[:state_id]) if params[:state_id].present?
  end

  def edit
  end

  def create
    @advocate = Advocate.new(advocate_params)

    respond_to do |format|
      if @advocate.save
        format.html { redirect_to @advocate, notice: 'Advocate was successfully created.' }
        format.json { render :show, status: :created, location: @advocate }
      else
        format.html { render :new }
        format.json { render json: @advocate.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @advocate.update(advocate_params)
        format.html { redirect_to @advocate, notice: 'Advocate was successfully updated.' }
        format.json { render :show, status: :ok, location: @advocate }
      else
        format.html { render :edit }
        format.json { render json: @advocate.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @advocate.destroy
    respond_to do |format|
      format.html { redirect_to advocates_url, notice: 'Advocate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_advocate
      @advocate = Advocate.find(params[:id])
    end

    def advocate_params
      params.require(:advocate).permit(:email, :password, :password_confirmation, :state, :case)
    end
end
