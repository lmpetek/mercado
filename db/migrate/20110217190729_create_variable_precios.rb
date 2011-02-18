class CreateVariablePrecios < ActiveRecord::Migration
  def self.up
    create_table :variable_precios do |t|
      t.string :detalle

      t.timestamps
    end
  end

  def self.down
    drop_table :variable_precios
  end
end
