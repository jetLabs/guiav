class CreateLaboratorios < ActiveRecord::Migration
  def change
    create_table :laboratorios do |t|
      t.string :nombre
      t.string :razon_social
      t.string :direccion
      t.string :departamento
      t.string :telefono
      t.string :web

      t.timestamps
    end
  end
end
