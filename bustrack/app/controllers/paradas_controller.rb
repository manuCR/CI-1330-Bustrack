class ParadasController < ApplicationController
  before_action :set_parada, only: [:show, :edit, :update, :destroy]

  # GET /paradas
  # GET /paradas.json
  def index
    @paradas = Parada.all
  end

  # GET /paradas/1
  # GET /paradas/1.json
  def show
  end

  # GET /paradas/new
  def new
    @parada = Parada.new
  end

  # GET /paradas/1/edit
  def edit
  end

  # POST /paradas
  # POST /paradas.json
  def create
    @parada = Parada.new(parada_params)

    respond_to do |format|
      if @parada.save
        format.html { redirect_to @parada, notice: 'Parada was successfully created.' }
        format.json { render :show, status: :created, location: @parada }
      else
        format.html { render :new }
        format.json { render json: @parada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paradas/1
  # PATCH/PUT /paradas/1.json
  def update
    respond_to do |format|
      if @parada.update(parada_params)
        format.html { redirect_to @parada, notice: 'Parada was successfully updated.' }
        format.json { render :show, status: :ok, location: @parada }
      else
        format.html { render :edit }
        format.json { render json: @parada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paradas/1
  # DELETE /paradas/1.json
  def destroy
    @parada.destroy
    respond_to do |format|
      format.html { redirect_to paradas_url, notice: 'Parada was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parada
      @parada = Parada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parada_params
      params.require(:parada).permit(:nombre, :techo, :latitid, :longuitud)
    end
end
