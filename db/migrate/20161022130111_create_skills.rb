class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :category
      t.string :title
      t.text :description
      t.integer :percentage
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
