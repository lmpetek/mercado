class CreateElementVariables < ActiveRecord::Migration
  def self.up
    create_table :element_variables do |t|
      t.integer :element_id
      t.integer :variable_precio_id
      t.integer :variable_valor_id
      t.decimal :valor
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :element_variables
  end
end
