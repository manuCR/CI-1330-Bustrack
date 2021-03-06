class RutasController < ApplicationController
  before_action :set_ruta, only: [:show, :edit, :update, :destroy]

  # GET /rutas
  # GET /rutas.json
  def index
    @rutas = Ruta.all
  end

  # GET /rutas/1
  # GET /rutas/1.json
  def show
  end

  # GET /rutas/new
  def new
    @ruta = Ruta.new
  end

  # GET /rutas/1/edit
  def edit
  end

  # POST /rutas
  # POST /rutas.json
  def create
    @ruta = Ruta.new(ruta_params)
    respond_to do |format|
       if params[:parada_inicial] != ""
          @inicio = Parada.find(params[:parada_inicial])
          @ruta.parada.push(@inicio)
          @ruta_parada = @ruta.ruta_parada.find_by(parada_id: @inicio.id)
          @ruta_parada.tipo = 1
          @ruta_parada.save
       end
       if params[:parada_final] != ""
          @final = Parada.find(params[:parada_final])
          @ruta.parada.push(@final)
          @ruta_parada = @ruta.ruta_parada.find_by(parada_id: @final.id)
          @ruta_parada.tipo = -1
          @ruta_parada.save
       end
       if params[:grupo_paradas] != ""
          @paradas = Parada.where(:id => params[:grupo_paradas])
          @ruta.parada << @paradas
       end
       if @ruta.save
         format.html { redirect_to @ruta, notice: 'Ruta was successfully created.' }
         format.json { render :show, status: :created, location: @ruta }
       else
         format.html { render :new }
         format.json { render json: @ruta.errors, status: :unprocessable_entity }
       end
     end
  end

  # PATCH/PUT /rutas/1
  # PATCH/PUT /rutas/1.json
  def update
    respond_to do |format|
       @ruta.parada.destroy_all
       if params[:parada_inicial] != ""
          @inicio = Parada.find(params[:parada_inicial])
          @ruta.parada.push(@inicio)
          @ruta_parada = @ruta.ruta_parada.find_by(parada_id: @inicio.id)
          @ruta_parada.tipo = 1
          @ruta_parada.save
       end
       if params[:parada_final] != ""
          @final = Parada.find(params[:parada_final])
          @ruta.parada.push(@final)
          @ruta_parada = @ruta.ruta_parada.find_by(parada_id: @final.id)
          @ruta_parada.tipo = -1
          @ruta_parada.save
       end
       if params[:grupo_paradas] != ""
          @paradas = Parada.where(:id => params[:grupo_paradas])
          @ruta.parada << @paradas
       end
       if @ruta.update(ruta_params)
         format.html { redirect_to @ruta, notice: 'Ruta was successfully updated.' }
         format.json { render :show, status: :ok, location: @ruta }
       else
         format.html { render :edit }
         format.json { render json: @ruta.errors, status: :unprocessable_entity }
       end
     end
  end

  # DELETE /rutas/1
  # DELETE /rutas/1.json
  def destroy
    @ruta.destroy
    respond_to do |format|
      format.html { redirect_to rutas_url, notice: 'Ruta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruta
      @ruta = Ruta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ruta_params
      params.require(:ruta).permit(:nombre, :frecuencia, :precio, :horario)
    end
end
