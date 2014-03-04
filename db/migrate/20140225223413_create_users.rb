class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password
      t.integer :age
      t.boolean :male

      t.timestamps
    end
  end
end

# rails generate model User name:string username:string password:string male:boolean
