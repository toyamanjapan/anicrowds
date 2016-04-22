class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :project_id
      t.integer :company_id
      t.integer :concept_id
      t.text :text
      t.integer :rate

      t.timestamps
    end
  end
end
