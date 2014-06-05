class MultiplesRutasController < ApplicationController
  before_action :set_multiples_ruta, only: [:show, :edit, :update, :destroy]

  # GET /multiples_rutas
  # GET /multiples_rutas.json
  def index
    @rutas = Ruta.all
  end

  # GET /multiples_rutas/1
  # GET /multiples_rutas/1.json
  def show
  end

  # GET /multiples_rutas/new
  def new
    @multiples_ruta = MultiplesRuta.new
  end

  # GET /multiples_rutas/1/edit
  def edit
  end

  # POST /multiples_rutas
  # POST /multiples_rutas.json
  def create
    @multiples_ruta = MultiplesRuta.new(multiples_ruta_params)

    respond_to do |format|
      if @multiples_ruta.save
        format.html { redirect_to @multiples_ruta, notice: 'Multiples ruta was successfully created.' }
        format.json { render :show, status: :created, location: @multiples_ruta }
      else
        format.html { render :new }
        format.json { render json: @multiples_ruta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /multiples_rutas/1
  # PATCH/PUT /multiples_rutas/1.json
  def update
    respond_to do |format|
      if @multiples_ruta.update(multiples_ruta_params)
        format.html { redirect_to @multiples_ruta, notice: 'Multiples ruta was successfully updated.' }
        format.json { render :show, status: :ok, location: @multiples_ruta }
      else
        format.html { render :edit }
        format.json { render json: @multiples_ruta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /multiples_rutas/1
  # DELETE /multiples_rutas/1.json
  def destroy
    @multiples_ruta.destroy
    respond_to do |format|
      format.html { redirect_to multiples_rutas_url, notice: 'Multiples ruta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_multiples_ruta
      @multiples_ruta = MultiplesRuta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def multiples_ruta_params
      params[:multiples_ruta]
    end
end
