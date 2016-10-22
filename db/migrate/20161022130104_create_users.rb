class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :custom_url
      t.text :bio
      t.string :address
      t.integer :template_id
      t.string :twitter_url
      t.string :linkedin_url
      t.string :github_url

      t.timestamps null: false
    end
  end
end
