class RutaController < ApplicationController
  before_action :set_rutas, only: [:show, :edit, :update, :destroy]

  # GET /ruta
  # GET /ruta.json
  def index
    @ruta = Rutas.all
  end

  # GET /ruta/1
  # GET /ruta/1.json
  def show
  end

  # GET /ruta/new
  def new
    @rutas = Rutas.new
  end

  # GET /ruta/1/edit
  def edit
  end

  # POST /ruta
  # POST /ruta.json
  def create
    @rutas = Rutas.new(rutas_params)

    respond_to do |format|
      if @rutas.save
        format.html { redirect_to @rutas, notice: 'Rutas was successfully created.' }
        format.json { render :show, status: :created, location: @rutas }
      else
        format.html { render :new }
        format.json { render json: @rutas.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ruta/1
  # PATCH/PUT /ruta/1.json
  def update
    respond_to do |format|
      if @rutas.update(rutas_params)
        format.html { redirect_to @rutas, notice: 'Rutas was successfully updated.' }
        format.json { render :show, status: :ok, location: @rutas }
      else
        format.html { render :edit }
        format.json { render json: @rutas.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruta/1
  # DELETE /ruta/1.json
  def destroy
    @rutas.destroy
    respond_to do |format|
      format.html { redirect_to ruta_url, notice: 'Rutas was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rutas
      @rutas = Rutas.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rutas_params
      params.require(:rutas).permit(:nombre, :Inicio_Latitud, :Inicio_Longuitud, :Fin_Latitud, :Fin_Longuitud, :Frecuencia, :Precio, :Horario)
    end
end
