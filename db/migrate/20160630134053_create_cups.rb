class CreateCups < ActiveRecord::Migration
  def change
    create_table :cups do |t|
      t.integer :user_id, { null: false, uniqueness: true }
      t.timestamps(null: false)
    end
  end
end
