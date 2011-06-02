class VariableValor < ActiveRecord::Base
  belongs_to :project
  validates_presence_of		    :detalle,															                          :message => "es un dato requerido"
end

# == Schema Information
#
# Table name: variable_valors
#
#  id            :integer         not null, primary key
#  detalle       :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  observaciones :text
#  project_id    :integer
#

