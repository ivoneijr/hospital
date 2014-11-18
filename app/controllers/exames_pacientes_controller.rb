class ExamesPacientesController < ApplicationController
  before_action :set_exames_paciente, only: [:show, :edit, :update, :destroy]

  # GET /exames_pacientes
  # GET /exames_pacientes.json
  def index
    @exames_pacientes = ExamesPaciente.all
  end

  # GET /exames_pacientes/1
  # GET /exames_pacientes/1.json
  def show
  end

  # GET /exames_pacientes/new
  def new
    @exames_paciente = ExamesPaciente.new
  end

  # GET /exames_pacientes/1/edit
  def edit
  end

  # POST /exames_pacientes
  # POST /exames_pacientes.json
  def create
    @exames_paciente = ExamesPaciente.new(exames_paciente_params)

    respond_to do |format|
      if @exames_paciente.save
        format.html { redirect_to @exames_paciente, notice: 'Exames paciente was successfully created.' }
        format.json { render :show, status: :created, location: @exames_paciente }
      else
        format.html { render :new }
        format.json { render json: @exames_paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exames_pacientes/1
  # PATCH/PUT /exames_pacientes/1.json
  def update
    respond_to do |format|
      if @exames_paciente.update(exames_paciente_params)
        format.html { redirect_to @exames_paciente, notice: 'Exames paciente was successfully updated.' }
        format.json { render :show, status: :ok, location: @exames_paciente }
      else
        format.html { render :edit }
        format.json { render json: @exames_paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exames_pacientes/1
  # DELETE /exames_pacientes/1.json
  def destroy
    @exames_paciente.destroy
    respond_to do |format|
      format.html { redirect_to exames_pacientes_url, notice: 'Exames paciente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exames_paciente
      @exames_paciente = ExamesPaciente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exames_paciente_params
      params.require(:exames_paciente).permit(:medico_id, :paciente_id, :exame_id, :quantidade, :valor)
    end
end
