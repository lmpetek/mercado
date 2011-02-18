class CreateVariableValors < ActiveRecord::Migration
  def self.up
    create_table :variable_valors do |t|
      t.string :detalle

      t.timestamps
    end
  end

  def self.down
    drop_table :variable_valors
  end
end
