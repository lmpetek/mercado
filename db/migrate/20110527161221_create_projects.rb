class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :detalle
      t.date :fecha_inicio
      t.date :fecha_final
      t.string :responsables
      t.text :observaciones

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
