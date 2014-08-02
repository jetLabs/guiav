class Medicamento < ActiveRecord::Base
  belongs_to :laboratorio
  belongs_to :categoria
end
