class AddPackagesToUsers < ActiveRecord::Migration
  def change
  	create_table :packages_users, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :package, index: true
    end
  end
end
