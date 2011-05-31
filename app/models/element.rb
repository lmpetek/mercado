class Element < ActiveRecord::Base
  has_many :element_variable_precios
  has_many :element_variable_valors
  accepts_nested_attributes_for :element_variable_precios, :allow_destroy => true, :reject_if => :all_blank
  accepts_nested_attributes_for :element_variable_valors, :allow_destroy => true, :reject_if => :all_blank

#  has_many :element_variable
#  has_many :element_variable_precio, :class_name => "ElementVariable" :conditions => {:type => 'element_variable_precio'}
#  has_many :element_variable_valor, :class_name => "ElementVariable" :conditions => {:type => 'element_variable_precio'}
#  has_many :mayores, :class_name => "ElementVariable" :conditions => ['edad > ?', 63] do
#     def jubilar
#       each do |mayor|
#         mayor.asignar_jubilacion!
#       end
#     end
#  end
end


#ele.mayores.jubilar()


# == Schema Information
#
# Table name: elements
#
#  id            :integer         not null, primary key
#  detalle       :string(255)
#  observacion   :text
#  created_at    :datetime
#  updated_at    :datetime
#  Observacioens :text
#  project_id    :integer
#

