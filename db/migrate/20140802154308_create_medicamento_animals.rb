class CreateMedicamentoAnimals < ActiveRecord::Migration
  def change
    create_table :medicamento_animals do |t|
      t.references :animal, index: true
      t.references :medicamento, index: true

      t.timestamps
    end
  end
end
