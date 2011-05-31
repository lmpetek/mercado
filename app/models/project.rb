class Project < ActiveRecord::Base
  belongs_to :empresa
  has_many :variable_precios
  has_many :variable_valors
  has_many :elements
end
