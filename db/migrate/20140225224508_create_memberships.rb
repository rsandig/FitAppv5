class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :user_id
      t.integer :community_id
      t.date :join_date

      t.timestamps
    end
  end
end

# rails generate model Membership user_id:integer community_id:integer join_date:date
