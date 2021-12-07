class AddCurrentUserIdToBikes < ActiveRecord::Migration[6.1]
  def change
    add_column :bikes, :current_user_id, :int
  end
end
