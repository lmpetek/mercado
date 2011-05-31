class VariablePrecio < ActiveRecord::Base
  belongs_to :project
  validates(:detalle, :presence => true)
end

# == Schema Information
#
# Table name: variable_precios
#
#  id            :integer         not null, primary key
#  detalle       :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  observaciones :text
#  project_id    :decimal(, )
#

