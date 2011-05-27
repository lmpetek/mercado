class VariableValor < ActiveRecord::Base
  belongs_to :project
  validates(:detalle, :presence => true)
end
