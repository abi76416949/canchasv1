class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.string :nombre, null: false
      t.string :telefono
      t.string :email

      t.timestamps
    end
  end
end
