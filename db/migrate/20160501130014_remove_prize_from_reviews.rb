class RemovePrizeFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :prize, :string
  end
end
