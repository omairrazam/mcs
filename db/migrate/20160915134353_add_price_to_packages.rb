class AddPriceToPackages < ActiveRecord::Migration
  def change
    add_column :packages, :price_subscription, :float
    add_column :packages, :price_initial, :float
  end
end
