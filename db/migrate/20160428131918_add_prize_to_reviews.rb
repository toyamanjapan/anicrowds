class AddPrizeToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :prize, :string
  end
end
