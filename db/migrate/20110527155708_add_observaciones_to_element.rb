class AddObservacionesToElement < ActiveRecord::Migration
  def self.up
    add_column :elements, :Observacioens, :text
  end

  def self.down
    remove_column :elements, :Observacioens
  end
end
