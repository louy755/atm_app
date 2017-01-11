class AtmMachesController < ApplicationController
  before_action :set_atm_mach, only: [:show, :edit, :update, :destroy]


def index
    if params[:search].present?
      @atm_maches = AtmMach.near(params[:search], 50, :order => :distance)
    else
    @atm_maches = AtmMach.all
    end
  end
  
  # GET /atm_maches
  # GET /atm_maches.json
  def index
    @atm_maches = AtmMach.all
  end

  # GET /atm_maches/1
  # GET /atm_maches/1.json
  def show
  end

  # GET /atm_maches/new
  def new
    @atm_mach = AtmMach.new
  end

  # GET /atm_maches/1/edit
  def edit
  end

  # POST /atm_maches
  # POST /atm_maches.json
  def create
    @atm_mach = AtmMach.new(atm_mach_params)

    respond_to do |format|
      if @atm_mach.save
        format.html { redirect_to @atm_mach, notice: 'Atm mach was successfully created.' }
        format.json { render :show, status: :created, location: @atm_mach }
      else
        format.html { render :new }
        format.json { render json: @atm_mach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atm_maches/1
  # PATCH/PUT /atm_maches/1.json
  def update
    respond_to do |format|
      if @atm_mach.update(atm_mach_params)
        format.html { redirect_to @atm_mach, notice: 'Atm mach was successfully updated.' }
        format.json { render :show, status: :ok, location: @atm_mach }
      else
        format.html { render :edit }
        format.json { render json: @atm_mach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atm_maches/1
  # DELETE /atm_maches/1.json
  def destroy
    @atm_mach.destroy
    respond_to do |format|
      format.html { redirect_to atm_maches_url, notice: 'Atm mach was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atm_mach
      @atm_mach = AtmMach.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def atm_mach_params
      params.require(:atm_mach).permit(:name, :address, :latitude, :longitude)
    end
end
