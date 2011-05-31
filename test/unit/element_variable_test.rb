require 'test_helper'

class ElementVariableTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

