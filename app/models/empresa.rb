class Empresa < ActiveRecord::Base
  has_many :Projects
  validates(:detalle, :presence => true)
end
