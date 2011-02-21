class VariablePrecio < ActiveRecord::Base
  has_many :empresas
  validates(:detalle, :presence => true)
end
