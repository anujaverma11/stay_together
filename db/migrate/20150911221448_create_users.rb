class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :family_id
      t.integer :parent_id
      t.integer :spouse_id
      t.string :first_name
      t.string :last_name
      t.datetime :date_of_birth
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.string :phone_number
      t.string :place_of_birth
      t.string :gender

      t.timestamps null: false
    end
    add_index :users, :parent_id
    add_index :users, :spouse_id
  end
end
