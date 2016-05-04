class AddRateToConcepts < ActiveRecord::Migration
  def change
    add_column :concepts, :rate, :integer
  end
end
