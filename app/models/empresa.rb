class Empresa < ActiveRecord::Base
  has_many :variable_precios
  has_many :variable_valors
end
