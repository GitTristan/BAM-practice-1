class AddDateToShowListings < ActiveRecord::Migration
  def change
    add_column :show_listings, :date, :datetime
  end
end
