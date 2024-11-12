class PolideportivosController < ApplicationController
  before_action :set_polideportivo, only: [:show, :edit, :update]

  def index
    @polideportivos = Polideportivo.all
    @polideportivo = params
  end
  def new
    @polideportivo = Polideportivo.new
  end

  def create
    @polideportivo = Polideportivo.new(polideportivo_params)

    if @polideportivo.save
      redirect_to polideportivos_path, notice: 'El polideportivo fue creado exitosamente.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit

  end

  def update
    if @polideportivo.update(polideportivo_params)
      redirect_to polideportivo_path(@polideportivo), notice: 'Polideportivo actualizado exitosamente.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_polideportivo
    @polideportivo = Polideportivo.find(params[:id])
  end

  def polideportivo_params
    params.require(:polideportivo).permit(:contacto, :ubicacion_api, :ubicacion, :nombre)
  end


  private

  def polideportivo_params
    params.require(:polideportivo).permit(:nombre, :ubicacion, :categoria, :descripcion, :contacto, :ubicacion_api, :imagen)
  end
end
