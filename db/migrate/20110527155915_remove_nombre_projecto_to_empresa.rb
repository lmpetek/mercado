class RemoveNombreProjectoToEmpresa < ActiveRecord::Migration
  def self.up
    remove_column :empresas, :fecha_inicio
    remove_column :empresas, :fecha_fin
    remove_column :empresas, :responsables
    remove_column :empresas, :relevamiento
    remove_column :empresas, :nombre_projecto
  end

  def self.down
    add_column :empresas, :fecha_inicio, :date
    add_column :empresas, :fecha_fin, :date
    add_column :empresas, :responsables, :string
    add_column :empresas, :relevamiento, :string
    add_column :empresas, :nombre_projecto, :string
  end
end
