class Empresa < ActiveRecord::Base
  has_many :projects
  validates(:detalle, :presence => true)
end
