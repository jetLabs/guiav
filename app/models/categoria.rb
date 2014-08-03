class Categoria < ActiveRecord::Base

	has_many :subcategorias, :class_name => 'Categoria', :foreign_key => 'parent_id'
	belongs_to :parent, :class_name => 'Categoria'

  	has_many :medicamentos

end
