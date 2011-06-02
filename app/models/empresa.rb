class Empresa < ActiveRecord::Base
  has_many :projects
  validates_format_of			    :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => "direccion invalida"
  validates_presence_of		    :detalle,															                          :message => "es un dato requerido"
  validates_presence_of		    :contacto,															                        :message => "es un dato requerido"
  validates_presence_of		    :Telefono,															                        :message => "es un dato requerido"

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

