class TareasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tarea, only: [:show, :edit, :update, :destroy]

  # GET /tareas
  # GET /tareas.json
  def index
    @tareas = Tarea.all
    @materias = Materium.all
    @estados = Estado.all
  end

  # GET /tareas/1
  # GET /tareas/1.json
  def show
  end

  # GET /tareas/new
  def new
    @tarea = Tarea.new
    @materias = Materium.all
    @estados = Estado.all
  end

  # GET /tareas/1/edit
  def edit
    @materias = Materium.all
    @estados = Estado.all
    @comment = Comment.new
    @tarea = Tarea.find(params[:id])
    @comentarios = @tarea.comments.all
  end

  # POST /tareas
  # POST /tareas.json
  def create
    @tarea = Tarea.new(tarea_params)

    respond_to do |format|
      if @tarea.save
        format.html { redirect_to root_path }
        format.json { render :show, status: :created, location: @tarea }
      else
        format.html { render :new }
        format.json { render json: @tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tareas/1
  # PATCH/PUT /tareas/1.json
  def update
    respond_to do |format|
      if @tarea.update(tarea_params)
        format.html { redirect_to edit_tarea_path(@tarea.id), notice: 'Tarea was successfully updated.' }
        format.json { render :show, status: :ok, location: @tarea }
      else
        format.html { render :edit }
        format.json { render json: @tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tareas/1
  # DELETE /tareas/1.json
  def destroy
    @tarea.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarea
      @tarea = Tarea.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tarea_params
      params.require(:tarea).permit(:descripcion, :materium_id, :estado_id, :FechaFin)
    end
end
