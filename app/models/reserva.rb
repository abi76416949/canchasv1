class Reserva < ApplicationRecord
  belongs_to :cliente
  belongs_to :cancha


  #Esto permite que el formulario reservas acepte a los clientes
  accepts_nested_attributes_for :cliente
end
