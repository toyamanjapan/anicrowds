class AddProjectIdToConcepts < ActiveRecord::Migration
  def change
    add_column :concepts, :project_id, :integer
  end
end
