class CreateMedicamentos < ActiveRecord::Migration
  def change
    create_table :medicamentos do |t|
      t.string :nombre
      t.references :laboratorio, index: true
      t.text :indicaciones
      t.text :composicion
      t.text :administracion_dosis
      t.references :categoria, index: true
      t.string :presentacion
      t.string :tipo
      t.text :contraindicacion_precaucion
      t.string :te_carne
      t.string :te_leche
      t.string :mgap_nro
      t.text :observaciones

      t.timestamps
    end
  end
end
