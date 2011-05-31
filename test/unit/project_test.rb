require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

