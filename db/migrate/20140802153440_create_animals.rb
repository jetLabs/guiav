class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
