class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
        t.string        :title
        t.text        :project_detail
        t.string        :industry
        t.text        :industry
        t.text        :other

      t.timestamps null: false
    end
  end
end
