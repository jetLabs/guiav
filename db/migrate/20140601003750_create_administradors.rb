class CreateAdministradors < ActiveRecord::Migration
  def change
    create_table :administradors do |t|
      t.string :usuario
      t.string :nombre
      t.string :contrasena
      t.boolean :habilitado

      t.timestamps
    end
  end
end
