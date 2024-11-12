class CreateReservas < ActiveRecord::Migration[7.0]
  def change
    create_table :reservas do |t|
      t.references :cliente, null: false, foreign_key: { on_delete: :cascade } #esto va a servir para cuando eliminemos las resercas asociciadas a un cliente o una cancha
      t.references :cancha, null: false, foreign_key:  { on_delete: :cascade }
      t.date :fecha
      t.time :hora_inicio
      t.time :hora_fin

      t.timestamps
    end
  end
end
