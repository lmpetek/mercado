class AddProjetIdToElement < ActiveRecord::Migration
  def self.up
    add_column :elements, :project_id, :integer
  end

  def self.down
    remove_column :elements, :project_id
  end
end
