class GpsSController < ApplicationController
  before_action :set_gps, only: [:show, :edit, :update, :destroy]

  # GET /gps_s
  # GET /gps_s.json
  def index
    @gps_s = Gps.all
  end

  # GET /gps_s/1
  # GET /gps_s/1.json
  def show
  end

  # GET /gps_s/new
  def new
    @gps = Gps.new
  end

  # GET /gps_s/1/edit
  def edit
  end

  # POST /gps_s
  # POST /gps_s.json
  def create
    @gps = Gps.new(gps_params)

    respond_to do |format|
      if @gps.save
        format.html { redirect_to @gps, notice: 'Gps was successfully created.' }
        format.json { render :show, status: :created, location: @gps }
      else
        format.html { render :new }
        format.json { render json: @gps.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gps_s/1
  # PATCH/PUT /gps_s/1.json
  def update
    respond_to do |format|
      if @gps.update(gps_params)
        format.html { redirect_to @gps, notice: 'Gps was successfully updated.' }
        format.json { render :show, status: :ok, location: @gps }
      else
        format.html { render :edit }
        format.json { render json: @gps.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gps_s/1
  # DELETE /gps_s/1.json
  def destroy
    @gps.destroy
    respond_to do |format|
      format.html { redirect_to gps_s_url, notice: 'Gps was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gps
      @gps = Gps.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gps_params
      params.require(:gps).permit(:id_gps)
    end
end
