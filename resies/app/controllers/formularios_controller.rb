class FormulariosController < ApplicationController
  before_action :set_formulario, only: [:show, :edit, :update, :destroy]

  # GET /formularios
  # GET /formularios.json
  def index
    @formularios = Formulario.where(user_id: current_user.id)
  end

  # GET /formularios/1
  # GET /formularios/1.json
  def show
    @questions = Question.all
    @resultados = Resultado.all
  end

  # GET /formularios/new
  def new
    @formulario = Formulario.new
    @formulario.resultados.build
    @questions = Question.order("indicador")
    @alternativas = Alternativa.all
    Rails.logger.debug("New method executed")
  end

  #GET /formularios/1/edit
  def edit
    @questions = Question.all
    @resultados = Resultado.where(formulario_id: params[:id])

  end

  # POST /formularios
  # POST /formularios.json
  def create

    @formulario = current_user.formularios.new(formulario_params)
    respond_to do |format|
      if @formulario.save

        @historium = Historium.new
        @historium.id = @formulario.id
        @historium.save

        format.html { redirect_to @historium, notice: 'Formulario was successfully created.' }
        format.json { render :edit, status: :created, location: @historium }
      else
        format.html { render :new }
        format.json { render json: @formulario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formularios/1
  # PATCH/PUT /formularios/1.json
  def update

    respond_to do |format|
      if @formulario.update(formulario_params)
        format.html { redirect_to @formulario, notice: 'Formulario was successfully updated.' }
        format.json { render :show, status: :ok, location: @formulario }
      else
        format.html { render :edit }
        format.json { render json: @formulario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formularios/1
  # DELETE /formularios/1.json
  def destroy
    @formulario.destroy
    respond_to do |format|
      format.html { redirect_to formularios_url, notice: 'Formulario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formulario
      @formulario = Formulario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formulario_params
      params.require(:formulario).permit(:nombre_encargado, :telefono, :fecha,
      :resultados_attributes => [:id, :respuesta, :comentario, :verificacion, :descripcion, :question_id, :_destroy]
      )
    end
end
