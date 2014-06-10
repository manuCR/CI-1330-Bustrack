class RutasUsuariosController < ApplicationController
  before_action :set_rutas_usuario, only: [:show, :edit, :update, :destroy]

  # GET /rutas_usuarios
  # GET /rutas_usuarios.json
  def index
    @rutas_usuarios = RutasUsuario.all
  end

  # GET /rutas_usuarios/1
  # GET /rutas_usuarios/1.json
  def show
  end

  # GET /rutas_usuarios/new
  def new
    @rutas_usuario = RutasUsuario.new
  end

  # GET /rutas_usuarios/1/edit
  def edit
  end

  # POST /rutas_usuarios
  # POST /rutas_usuarios.json
  def create
    @rutas_usuario = RutasUsuario.new(rutas_usuario_params)

    respond_to do |format|
      if @rutas_usuario.save
        format.html { redirect_to @rutas_usuario, notice: 'Rutas usuario was successfully created.' }
        format.json { render :show, status: :created, location: @rutas_usuario }
      else
        format.html { render :new }
        format.json { render json: @rutas_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rutas_usuarios/1
  # PATCH/PUT /rutas_usuarios/1.json
  def update
    respond_to do |format|
      if @rutas_usuario.update(rutas_usuario_params)
        format.html { redirect_to @rutas_usuario, notice: 'Rutas usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @rutas_usuario }
      else
        format.html { render :edit }
        format.json { render json: @rutas_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rutas_usuarios/1
  # DELETE /rutas_usuarios/1.json
  def destroy
    @rutas_usuario.destroy
    respond_to do |format|
      format.html { redirect_to rutas_usuarios_url, notice: 'Rutas usuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rutas_usuario
      @rutas_usuario = RutasUsuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rutas_usuario_params
      params[:rutas_usuario]
    end
end
