class ClientesController < ApplicationController
  def new
    @cliente = Cliente.new
  end

  def create
    @cliente = Cliente.new(cliente_params)
    if @cliente.save
      redirect_to root_path, notice: 'Cliente registrado exitosamente.'
    else
      render :new
    end
  end

  private

  def cliente_params
    params.require(:cliente).permit(:nombre, :telefono, :email)
  end
  
end
