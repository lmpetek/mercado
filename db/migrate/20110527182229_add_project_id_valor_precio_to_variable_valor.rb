class AddProjectIdValorPrecioToVariableValor < ActiveRecord::Migration
  def self.up
    add_column :variable_valors, :observaciones, :text
    add_column :variable_valors, :project_id, :integer
  end

  def self.down
    remove_column :variable_valors, :project_id
    remove_column :variable_valors, :observaciones
  end
end
