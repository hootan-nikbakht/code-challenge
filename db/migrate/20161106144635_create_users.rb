class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :username
      t.string :image
      t.string :email
      t.string :name

      t.timestamps null: false
    end
  end
end
