class Medicamento < ActiveRecord::Base
  belongs_to :laboratorio
  belongs_to :categoria

  has_and_belongs_to_many :animals
end
