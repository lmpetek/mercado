require 'test_helper'

class EmpresaTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

