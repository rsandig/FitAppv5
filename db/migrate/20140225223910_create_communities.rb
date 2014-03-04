class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :name
      t.string :variety

      t.timestamps
    end
  end
end

# rails generate model Community name:stringvariety:string
