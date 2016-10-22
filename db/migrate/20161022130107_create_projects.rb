class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :url
      t.attachment :picture
      t.decimal :project_order
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
