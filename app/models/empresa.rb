class Empresa < ActiveRecord::Base
  has_many :variable_precios
  has_many :variable_valors
  validates(:detalle, :presence => true)
end
