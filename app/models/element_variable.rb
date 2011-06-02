class ElementVariable < ActiveRecord::Base
  belongs_to :element

  validates_presence_of		    :detalle,															                          :message => "es un dato requerido"

end

# == Schema Information
#
# Table name: element_variables
#
#  id                 :integer         not null, primary key
#  element_id         :integer
#  variable_precio_id :integer
#  variable_valor_id  :integer
#  valor              :decimal(, )
#  type               :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#

