class Empresa < ActiveRecord::Base
  has_many :projects
  validates(:detalle, :presence => true)
end

# == Schema Information
#
# Table name: empresas
#
#  id                 :integer         not null, primary key
#  detalle            :string(255)
#  variable_precio_id :integer
#  variable_valor_id  :integer
#  created_at         :datetime
#  updated_at         :datetime
#  contacto           :string(255)
#  telefono           :string(255)
#  email              :string(255)
#  observaciones      :string(255)
#

