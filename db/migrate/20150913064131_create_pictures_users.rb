class CreatePicturesUsers < ActiveRecord::Migration
  def change
    create_table :pictures_users, id: false do |t|
      t.integer :picture_id
      t.integer :user_id
    end
  end
end
