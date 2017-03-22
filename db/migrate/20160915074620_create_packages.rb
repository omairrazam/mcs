class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.string :type
      t.text :description
      t.string :status

      t.timestamps null: false
    end
  end
end
