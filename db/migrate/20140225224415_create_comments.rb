class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.text :comment
      t.date :date
      t.integer :activity_id

      t.timestamps
    end
  end
end

# rails generate model Comment user_id:integer comment:text date:date activity_id:integer
