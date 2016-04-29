class AddRewardToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :reward, :integer
  end
end
