class AddStatusToUser < ActiveRecord::Migration
  def change
    add_column :users, :status, :string, :default => 0
  end
end
