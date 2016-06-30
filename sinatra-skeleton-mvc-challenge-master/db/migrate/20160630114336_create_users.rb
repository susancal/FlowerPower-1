class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, { null: false, uniqueness: true }
      t.string :username, { null: false, uniqueness: true }
      t.string :password_hash, { null: false }
      t.integer :recommended_intake, default: 12
      t.timestamps(null: false)
    end
  end
end
