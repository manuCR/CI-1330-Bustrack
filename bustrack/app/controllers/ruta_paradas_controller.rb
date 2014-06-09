class RutaParadasController < ApplicationController
  before_action :set_ruta_parada, only: [:show, :edit, :update, :destroy]

  # GET /ruta_paradas
  # GET /ruta_paradas.json
  def index
    @ruta_paradas = RutaParada.all
  end

  # GET /ruta_paradas/1
  # GET /ruta_paradas/1.json
  def show
  end

  # GET /ruta_paradas/new
  def new
    @ruta_parada = RutaParada.new
  end

  # GET /ruta_paradas/1/edit
  def edit
  end

  # POST /ruta_paradas
  # POST /ruta_paradas.json
  def create
    @ruta_parada = RutaParada.new(ruta_parada_params)

    respond_to do |format|
      if @ruta_parada.save
        format.html { redirect_to @ruta_parada, notice: 'Ruta parada was successfully created.' }
        format.json { render :show, status: :created, location: @ruta_parada }
      else
        format.html { render :new }
        format.json { render json: @ruta_parada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ruta_paradas/1
  # PATCH/PUT /ruta_paradas/1.json
  def update
    respond_to do |format|
      if @ruta_parada.update(ruta_parada_params)
        format.html { redirect_to @ruta_parada, notice: 'Ruta parada was successfully updated.' }
        format.json { render :show, status: :ok, location: @ruta_parada }
      else
        format.html { render :edit }
        format.json { render json: @ruta_parada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruta_paradas/1
  # DELETE /ruta_paradas/1.json
  def destroy
    @ruta_parada.destroy
    respond_to do |format|
      format.html { redirect_to ruta_paradas_url, notice: 'Ruta parada was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruta_parada
      @ruta_parada = RutaParada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ruta_parada_params
      params.require(:ruta_parada).permit(:tipo)
    end
end
