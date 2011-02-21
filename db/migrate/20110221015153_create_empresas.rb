class CreateEmpresas < ActiveRecord::Migration
  def self.up
    create_table :empresas do |t|
      t.string :detalle
      t.integer :variable_precio_id
      t.integer :variable_valor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :empresas
  end
end
