class CreateConcepts < ActiveRecord::Migration
  def change
    create_table :concepts do |t|
        t.text        :title
        t.text        :detail
        t.text        :image

      t.timestamps
    end
  end
end
