class CreateMedicamentosAnimalesJoinTable < ActiveRecord::Migration
  def change
  	create_table :animals_medicamentos, id: false do |t|
      t.integer :animal_id
      t.integer :medicamento_id
    end
  end
end
