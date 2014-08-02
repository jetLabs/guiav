class MedicamentoAnimal < ActiveRecord::Base
  belongs_to :animal
  belongs_to :medicamento
end
