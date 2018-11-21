class BanidosController < ApplicationController
  before_action :set_banido, only: [:show, :edit, :update, :destroy]

  # GET /banidos
  # GET /banidos.json
  def index
    @banidos = Banido.all
  end

  # GET /banidos/1
  # GET /banidos/1.json
  def show
  end

  # GET /banidos/new
  def new
    @banido = Banido.new
  end

  # GET /banidos/1/edit
  def edit
  end

  # POST /banidos
  # POST /banidos.json
  def create
    @banido = Banido.new(banido_params)

    respond_to do |format|
      if @banido.save
        format.html { redirect_to @banido, notice: 'Banido was successfully created.' }
        format.json { render :show, status: :created, location: @banido }
      else
        format.html { render :new }
        format.json { render json: @banido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banidos/1
  # PATCH/PUT /banidos/1.json
  def update
    respond_to do |format|
      if @banido.update(banido_params)
        format.html { redirect_to @banido, notice: 'Banido was successfully updated.' }
        format.json { render :show, status: :ok, location: @banido }
      else
        format.html { render :edit }
        format.json { render json: @banido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banidos/1
  # DELETE /banidos/1.json
  def destroy
    @banido.destroy
    respond_to do |format|
      format.html { redirect_to banidos_url, notice: 'Banido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banido
      @banido = Banido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banido_params
      params.require(:banido).permit(:permanente, :termino)
    end
end
