class ParticipacaosController < ApplicationController
  before_action :set_participacao, only: [:show, :edit, :update, :destroy]

  # GET /participacaos
  # GET /participacaos.json
  def index
    @participacaos = Participacao.all
  end

  # GET /participacaos/1
  # GET /participacaos/1.json
  def show
  end

  # GET /participacaos/new
  def new
    @participacao = Participacao.new
  end

  # GET /participacaos/1/edit
  def edit
  end

  # POST /participacaos
  # POST /participacaos.json
  def create
    @participacao = Participacao.new(participacao_params)

    respond_to do |format|
      if @participacao.save
        format.html { redirect_to @participacao, notice: 'Participacao was successfully created.' }
        format.json { render :show, status: :created, location: @participacao }
      else
        format.html { render :new }
        format.json { render json: @participacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participacaos/1
  # PATCH/PUT /participacaos/1.json
  def update
    respond_to do |format|
      if @participacao.update(participacao_params)
        format.html { redirect_to @participacao, notice: 'Participacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @participacao }
      else
        format.html { render :edit }
        format.json { render json: @participacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participacaos/1
  # DELETE /participacaos/1.json
  def destroy
    @participacao.destroy
    respond_to do |format|
      format.html { redirect_to participacaos_url, notice: 'Participacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participacao
      @participacao = Participacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participacao_params
      params.require(:participacao).permit(:is_host)
    end
end
