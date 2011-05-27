class AddProjectIdValorPrecioToVariablePrecio < ActiveRecord::Migration
  def self.up
    add_column :variable_precios, :observaciones, :text
    add_column :variable_precios, :project_id, :decimal

  end

  def self.down
    remove_column :variable_precios, :observaciones
    remove_column :variable_precios, :project_id
  end
end
