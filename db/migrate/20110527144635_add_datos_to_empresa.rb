class AddDatosToEmpresa < ActiveRecord::Migration
  def self.up
    add_column :empresas, :contacto, :string
    add_column :empresas, :telefono, :string
    add_column :empresas, :email, :string
    add_column :empresas, :fecha_inicio, :date
    add_column :empresas, :fecha_fin, :date
    add_column :empresas, :responsables, :string
    add_column :empresas, :relevamiento, :string
    add_column :empresas, :observaciones, :string
    add_column :empresas, :nombre_projecto, :string
  end

  def self.down
    remove_column :empresas, :nombre_projecto
    remove_column :empresas, :observaciones
    remove_column :empresas, :relevamiento
    remove_column :empresas, :responsables
    remove_column :empresas, :fecha_fin
    remove_column :empresas, :fecha_inicio
    remove_column :empresas, :email
    remove_column :empresas, :telefono
    remove_column :empresas, :contacto
  end
end
