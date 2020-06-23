class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :phone

      t.timestamps
      t.datetime :discarded_at

      t.index :discarded_at
    end
  end
end
