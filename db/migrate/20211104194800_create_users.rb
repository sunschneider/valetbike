class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.boolean :enabled
      t.string :payment_method
      t.float :total_distance
      t.float :total_time
      t.float :recent_distance
      t.float :recent_time

      t.timestamps
    end
  end
end
