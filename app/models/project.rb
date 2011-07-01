class Project < ActiveRecord::Base
  belongs_to :empresa
  has_many :variable_precios
  has_many :variable_valors
  has_many :elements

  validates_presence_of		    :detalle,															                  :message => "es un dato requerido"
  validates_presence_of		    :responsables,												                  :message => "es un dato requerido"

end

# == Schema Information
#
# Table name: projects
#
#  id            :integer         not null, primary key
#  detalle       :string(255)
#  fecha_inicio  :date
#  fecha_final   :date
#  responsables  :string(255)
#  observaciones :text
#  created_at    :datetime
#  updated_at    :datetime
#  empresa_id    :integer
#

