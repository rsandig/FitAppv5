class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :variety
      t.integer :user_id
      t.date :date
      t.float :distance
      t.float :time
      t.text :description
      t.string :photo_url

      t.timestamps
    end
  end
end

# rails generate model Activity variety:string user_id:integer date:date distance:float time:float description:text photo_url:string
