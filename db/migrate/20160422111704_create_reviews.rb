class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :text
      t.integer :rate
      t.integer :project_id
      t.integer :concept_id
      t.references :reviewable, polymorphic: true, index: true
    end
  end
end
